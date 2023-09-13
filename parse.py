with open('recipes') as file, open('result', 'w') as res:
    for line in file:
        upgrade, base, ingredient = line.strip().split(',')
        res.write(f'''<owl:NamedIndividual rdf:about="http://www.semanticweb.org/dmitr/ontologies/2023/8/lab2#{upgrade}_craft">
    <rdf:type rdf:resource="http://www.semanticweb.org/dmitr/ontologies/2023/8/lab2#recipe"/>
    <lab2:recipe_base_potion rdf:resource="http://www.semanticweb.org/dmitr/ontologies/2023/8/lab2#{base}"/>
    <lab2:recipe_ingredient rdf:resource="http://www.semanticweb.org/dmitr/ontologies/2023/8/lab2#{ingredient}"/>
    <lab2:recipe_upgrade_potion rdf:resource="http://www.semanticweb.org/dmitr/ontologies/2023/8/lab2#{upgrade}"/>
</owl:NamedIndividual>\n''')
        