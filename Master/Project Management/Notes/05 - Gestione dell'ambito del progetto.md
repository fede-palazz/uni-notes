# Gestione dell'ambito del progetto

- **Scope**
  - raggio di azione, influenza, ambito
  - da l'idea dell'impatto del prodotto sul mondo che lo circonda (tiene conto degli aspetti sociali)
  - bisogna definire ciò che "*deve essere fatto*", più che quello che "*viene richiesto*" (in base a fattibilità delle richieste, risorse economiche, ecc...)
  - definizione del **contesto**: confine del sistema, controllare e gestire cosa è dentro e cosa è fuori dal progetto
  - **project scope**: include il product scope (viene aggiunta la parte gestionale del progetto)
  - **scope creep**: espansione non controllata dell’ambito del progetto o delle specifiche di prodotto senza adeguare i tempi, i costi e le risorse
  - far sempre firmare al committente la versione finale dello scope

## Processi di Project Scope Management

- lista
  - pianificazione della gestione dell'ambito
    - stabilire le regole con le quali gestire l'ambito e le specifiche del prodotto
  - raccolta dei requisiti
  - definizione dell'ambito
  - creazione della WBS
    - spezzettamento del progetto in sotto-attività
  - convalidazione dell'ambito
  - controllo dell'ambito
- sono influenzati da:
  - standard governativi / di settore (WBS standard)
  - cultura aziendale
  - amministrazione del personale
  - infrastrutture
  - condizioni di mercato

## Processo Plan Scope Management

- redatto subito dopo il Project Charter
- formalizzazione delle regole per la gestione dell'ambito del progetto
- vengono prodotti due documenti:
  - <u>piano di gestione dell'ambito</u>
    - legato al mondo gestionale
    - regole con cui:
      - descrivere l'ambito
      - ricavare la WBS (Work Breakdown Structure)
      - formalizzare la baseline dell'ambito
      - validare i deliverable
  - <u>piano di gestione dei requisiti</u>
    - regole di natura tecnica per:
      - raccogliere requisiti
      - gestire le modifiche dei requisiti
      - tracciare i requisiti
    - metriche per definire la priorità dei requisiti

## Processo Collect Requirements

- requisiti di:
  - prodotto (tecnici)
  - progetto (gestionali)
- metodo di raccolta migliore -> interviste con gli stakeholder (sponsor, ovvero azienda committente, e clienti, ovvero end user)
- definizione delle regole per la gestione degli stakeholder (Stakeholder Management Plan) -> alcuni sono più importanti di altri
- classificazione dei requisiti:
  - **dell'organizzazione** - di alto livello, legati alla strategia e agli obbiettivi del prodotto
  - **degli stakeholder**
  - **delle soluzioni** - tool da utilizzare
  - **non funzionali** - vincoli di natura tecnica (affidabilità, sicurezza, prestazioni)
  - **di transizione** - bisogna tenere conto della presenza di una fase di transizione (es: periodo di formazione degli impiegati per istruirli all'uso del nuovo prodotto)
  - **di progetto** - come gestire milestone, SAL
  - **di qualità** - per validare i deliverable una volta completati (test, certificazioni)
- il PM deve bilanciare le richieste di tutti gli stakeholder
- <u>Matrice di tracciabilità dei requisiti</u>
  - storia, modifiche, stato corrente di ogni requisito
- tecniche di raccolta dei requisiti
  - brainstorming, interviste, questionari, best practice
  - analisi dei dati
  - decisioni per votazioni o autocratica (da usare come ultima chance)
  - ...

## Processo Define Scope

- dopo aver raccolto i requisiti si può immaginare come gestire tutto il processo
  - stima delle tempistiche, risorse umane e non
- il **Project Scope Statement** contiene:
  - <u>specifiche</u> del prodotto / servizio
  - lista dei <u>deliverable da consegnare</u> (come scomporre il progetto in sotto parti)
  - <u>criteri di accettazione</u> del prodotto
  - <u>esclusioni del progetto</u> (indicare in modo esplicito cosa NON è incluso nel progetto)
  - <u>confini del progetto</u> (cosa è dentro / fuori)
- analisi preventiva del prodotto
  - descrivere in maniera dettagliata il prodotto finale
- **PBS** (Product Breakdown Structure)
  - scomposizione del prodotto finale in sotto-prodotti
- il valore del prodotto finale è >= di quello dei sotto-prodotti
- definizione dei benefici-costi
  - beneficio: valore dell'oggetto prodotto
  - esistono tecniche per stabilirli:
    - value analysis
      - alle funzionalità del prodotto vengono <u>assegnati dei punti</u> (function points) (IFPUG - autorità che stabilisce i punteggi)
      - il valore del bene si ottiene come costo della somma dei function points
    - value engineering

## Processo Create WBS

- **WBS** (baseline dell'ambito)
  - scomposizione delle attività legate al progetto in tante sotto-attività
  - ciascuna sotto-attività richiederà un certo tempo (definizione di milestones)