from swiplserver import PrologMQI, PrologThread, create_posix_path
import re
from abc import ABC, abstractmethod

KNOWLEDGE_BASE_PATH = r'C:\Users\dmitr\Desktop\ITMO\aisystems\lab1\lab1.pl'

class AbstractQueryProcessor(ABC):
    def run(self, prolog: PrologThread):
        res = prolog.query(self.form_query())
        if not res or len(res) == 0:
            self.handle_failure(res)
        else:
            self.handle_success(res)
    
    @abstractmethod
    def form_query(self):
        pass

    @abstractmethod
    def handle_success(self, res):
        pass

    @abstractmethod
    def handle_failure(self, res):
        pass
    
class FindIngredientList(AbstractQueryProcessor):
    def __init__(self, target_potion: str, source_potion: str):
        self.target_potion = target_potion
        self.source_potion = source_potion

    def form_query(self):
        return f'ingredient_list_to_potion({self.source_potion}, {self.target_potion}, X)'

    def handle_success(self, res):
        print(f'Found {len(res)} way(s) to get {self.target_potion} from {self.source_potion}:')
        for index, line in enumerate(res, 1):
            print(f'{index}.', ', '.join(line['X']))

    def handle_failure(self, res):
        print(f'Impossible to get {self.target_potion} from {self.source_potion}') 

class FindIngredientEffect(AbstractQueryProcessor):
    def __init__(self, ingredient: str):
        self.ingredient = ingredient

    def form_query(self):
        return f'ingredient_effect({self.ingredient}, X)'

    def handle_success(self, res):
        res = set([line['X'] for line in res])
        print(f'Found {len(res)} effect(s) that come from {self.ingredient}')
        for index, line in enumerate(res, 1):
            print(f'{index}.', line)

    def handle_failure(self, res):
        print(f"No effect found that come from {self.ingredient}")

class FindIngredientListToEfect(AbstractQueryProcessor):
    def __init__(self, effect: str):
        self.effect = effect

    def form_query(self):
        return f'ingredient_list_to_effect(bottle, {self.effect}, X)'

    def handle_success(self, res):
        print(f'Found {len(res)} recipe(s) that will produce {self.effect}')
        for index, line in enumerate(res, 1):
            print(f'{index}.', ', '.join(line['X']))

    def handle_failure(self, res):
        print(f'No recipes for {self.effect} found')

patterns = {
    r'How to get (.+) from (.+)\?': FindIngredientList,
    r'How to get (.+)\?': lambda target: FindIngredientList(target, 'bottle'),
    r'What effects can i get from (.+)\?': FindIngredientEffect,
    r'What recipes will give me (.+)\?': FindIngredientListToEfect
}

with PrologMQI() as mqi:
    with mqi.create_thread() as prolog:
        path = create_posix_path(KNOWLEDGE_BASE_PATH)
        print(prolog.query(f'consult("{path}")'))

        while True:
            query = input('> ')
            if query.lower() == 'exit':
                break

            for pattern in patterns:
                match = re.match(pattern, query, re.IGNORECASE)
                if match is None:
                    continue
                processor = patterns[pattern](*match.groups())
                processor.run(prolog)
                break
            else:
                print("Invalid query!")
        