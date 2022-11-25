## Sviluppo di un editor BPMN online nell'ambito del progetto TEAMING.AI

### 1. Introduzione

- Progetto TEAMING.AI
  - scopo
  - partner europei
  - Europa, AI, Industria 5.0

- Azienda ospitante (IDEA)
  - storia (in breve)
  - modello di business
    - settori di attività
    - target di utenza
- Obiettivo
  - teaming authoring tools
  - risultati attesi
- Struttura della Tesi

### 2. Strumenti e Metodi

- notazione BPMN
  - Obiettivi
  - BPMN
    - rappresentazione grafica
    - rappresentazione XML
    - esempi
  - Finalità
    - benefici, utilità
    - casi d'uso

- Stack tecnologico
  - HTML, CSS, JS
  - Ambiente di sviluppo (VS Code)
  - Repository (Github)
- Librerie esterne (bpmn-js, bpmn-js-token-simulation)
  - Descrizione
    - funzionalità
    - licenza
      - open source
      - Camunda
  - Installazione
  - Utilizzo
    - Viewer, Modeler
  - Token simulation

- JS bundlers
  - Introduzione
    - cosa sono
    - perchè sono necessari
    - utilizzi principali

  - Webpack
    - funzionamento
    - utilizzo all'interno del progetto


### 3. Progettazione

- plain JS vs JS framework
  - struttura e rendering manuale dei componenti
- utilità di un backend
  - salvataggio e recupero dei diagrammi (DB vs localstorage)
- libreria pacchettizzata vs installazione con npm
- selezione software di bundling
- distribuzione del software

### 4. Sviluppo, Test e Deploy

- Suddivisione logica dell'applicativo
  - homepage
  - viewer
  - modeler
- Moduli software
  - componenti
    - struttura 
      - funzioni condivise
      - rendering del template
    - gestione degli eventi
  - router
    - logica di routing
    - rendering dinamico dei componenti
  - localstorage handler
    - cenni sul localstorage del browser
    - salvataggio e caricamento dei diagrammi
  - diagram handler
    - comunicazione con libreria bpmn-js
    - esportazione dei diagrammi in XML / SVG
- Distribuzione del software
  - Docker
    - Introduzione
    - Scopo
    - Dockerfile
    - Docker compose
      - NGINX
  - AWS CDN
    - Cenni sulle CDN
- Problemi riscontrati

### 5. Conclusioni

- Raggiungimento degli obiettivi iniziali
- Miglioramenti ed implementazioni future
  - interfaccia responsive
  - funzioni touch-screen
  - versioning dei diagrammi
  - https
- Bug riscontrati
- Accorgimenti futuri

### 6. Bibliografia

