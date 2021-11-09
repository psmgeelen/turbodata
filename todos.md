# TODOs voor 9 nov 2021
Deze lijst bedoeld als *huiswerk* om grip te krijgen op alle *moving parts* van je opstelling en je technical requirements van je library die je wil maken. Concreet stel ik voor je dat de demo probeert te repoduceren en je kijkt naar de andere script die ik heb toegevoegd aan de repo. 

## DEMO reproduceren
In `./scripts/old/exampleDB2DB/` staat alles van de demo opstelling. Lees eerst de `./scripts/old/exampleDB2DB/NotesSetup.txt` om een idee te krijgen van wat je gaat doen. In het kort:
* je zet 2 DBs op om data van migreren
* Je vult een DB met sample data (let even op in welk schema dat is en zo)
* De migratie doe je dmv van een Jupyter notebook. 

Achtergrond informatie over MS SQL kun je hier vinden  https://hub.docker.com/_/microsoft-mssql-server. Kijk ook even naar de verschillende varianten van de container die je kunt krijgen (echt even de pagina doorlezen). Kijk ook even naar de 2 regels in de `NotesSetup.txt`, specifiek ook naar de `-e` flags. Dit zijn environment variabelen die je naar de container parsed om instellingen door te geven. 

De sample data zul je moeten inladen in de juiste DB. Ik heb dat met JetBrains DataGrip gedaan. Mijn voorstel is dat jij het probeerd met de MS SQL extensie van VS-Code. De SQL files in `./scripts/old/exampleDB2DB/`. 

Bij het uitvoeren van de Jupyter notebook moet je er even op letten dat je alle dependencies in Linux goed hebt geinstalleerd en de dependencies in python hebt geinstalleerd. Een aanzet is ook weer gegeven in `./scripts/old/exampleDB2DB/NotesSetup.txt`

## Andere scripts bekijken

De andere script die zijn geupload kun je vinden in de nieuwe folder `./test` Hier is een bestandje dat `full_test.sh` heet, waarin een interessant Shell script gebruik maakt van je `requirements.yml` om een python omgeving op te zetten en een test script af te trappen. Dit zou dus een volle test kunnen betekenen voor je CI/CD pipeline. Kijk ook even naar  https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html voor meer context. Je hoeft hier nog niet alles te snappen. Het idee is dat je de algemene 'bewegingen' snapt. We gaan dit nog goed implementeren en dan gaat het ook vanzelf logisch worden. 