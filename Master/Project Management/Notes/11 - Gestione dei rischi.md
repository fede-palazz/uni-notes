# Gestione dei rischi

## Incertezza

- si dovrebbe parlare più propriamente di **incertezza**
  - il <u>rischio</u> ha solo un'accezione negativa
  - l'<u>incertezza</u> può avere sia riscontri positivi (*opportunity*) che negativi (*threat*)
- qualsiasi progetto è esposto ad incertezza
  - bisogna sia prevedere i rischi che reagire prontamente ad essi
  - quando capita qualcosa che non va potrebbe finire più tardi o saltare qualche obbiettivo
  - quasi sempre però ci sono incertezze positive che bisogna cogliere (opportunità)
  - bisognerebbe vedere delle opportunità in ogni cambiamento
- possono essere
  - prevedibili (*known*)
    - bisogna essere proattivi
    - riserve di contingenza
  - non note (*unknown*)
    - bisogna essere reattivi (rispondere prontamente)
- la gestione dei rischi di progetto (Project Risk Management) consiste nel processo sistematico di identificazione, analisi e risposta ai rischi di progetto

- grandezze fondamentali

  - probabilità
    - può dipendere dal periodo
  - impatto
    - conseguenze sul progetto
    - può impattare
      - ambito
      - tempi
      - costi
      - qualità

- bisogna distinguere

  - <u>causa</u> - condizione, stato o fatto certo
  - <u>evento</u> - probabilità di verificarsi
  - <u>impatto</u> - sugli obbietivi del progetto<img src="img/Screenshot_18-10-2022_172244.png" alt="Screenshot_18-10-2022_17:22:44" style="zoom:67%;" />

  - per prevenire rischi bisogna agire sulle cause
  - agire sull'evento significa reagire ad esso

- <u>rischi vs questioni</u>

  - rischio
    - evento incerto
    - risposta proattiva
  - questione (*issue*)
    - problema, criticità effettiva
    - risposta reattiva

- tipologie di rischio

  - singolo
    - incertezza che si verifichi un singolo evento
    - es: rischio di una frana
  - generale (globale)
    - riguarda il progetto nel suo insieme
    - insieme di tutti i rischi
    - studio complicato (non tutti i rischi si verificano, solo alcuni sono negativi) -> metodo MonteCarlo

- fattore culturale

  - a livello di:
    - popolo
      - neolatini -> rischio = minaccia
      - anglosassoni -> rischi = oppportunità
    - persona
      - <u>propensione al rischio</u> (fattore psicologico)
        - *risk averse* - avversi a qualsiasi rischio
        - *risk seeker* - assunzione di grandi rischi per ottenere il massimo vantaggio
        - *risk neutral* - rischi nel breve termine per vantaggi a lungo termine
        - *risk tolerant* - focalizzati sulla pura consapevolezza del rischio, senza alcuna gestione dello stesso
      - <u>tolleranza al rischio</u> (massima esposizione al rischio che un individuo / organizzazione può far fronte senza ripercussioni)
      - <u>soglia di rischio</u> (livello sopra il quale non si è disposti ad accettare un rischio)

- possibilità di richiedere consulenze di esperti per valutare i rischi

- emergent risk (unknown-unkowns)

  - incertezze delle quali ci si può rendere conto solo quando si presentano
  - stanziamento riserve di contingenza

### Resilienza

- capacità di resistere ad un evento avverso
- più riserve si stanziano, più il progetto è resiliente

## Processi di Risk Management

- Pianificare la gestione dei rischi (Plan Risk Management): definire le linee guida e le regole per le attività di gestione dei rischi del progetto.
- Identificare i rischi (Identify Risks): determinare i rischi (sia opportunità che minacce) e documentare le loro caratteristiche.
- Eseguire l’analisi qualitativa dei rischi (Perform Qualitative Risk Analysis): assegnare un indice qualitativo ai rischi identificati
  che consenta di individuare le priorità nella loro gestione.
- Eseguire l’analisi quantitativa dei rischi (Perform Quantitative Risk Analysis): analizzare numericamente l’esposizione
  complessiva del progetto al rischio.
- Pianificare le risposte ai rischi (Plan Risk Responses): sviluppare il piano delle azioni di risposta ai rischi, necessarie per incrementare le opportunità e per ridurre le minacce del progetto.
- Eseguire le risposte ai rischi (Implement Risk Responses): garantire che le azioni di risposta ai rischi siano poste in essere come pianificato.
- Monitorare i rischi (Monitor Risks): valutare l’efficacia del piano di risposta ai rischi, rilevare lo stato dei rischi e identificare
  nuovi rischi.

## Processo Plan Risk Management

- pianificazione dei rischi
  - decisione del tipo di approccio ai rischi
    - specialmente dello sponsor del progetto
    - approccio più o meno tollerante
- **piano di gestione dei rischi** (*Risk Management Plan*)
  - <u>strategia</u> - approccio di gestione dei rischi
  - <u>metodologia</u> - strumenti e dati da usare nella valutazione
  - <u>ruoli e responsabilità</u> - ogni rischio deve avere dei responsabili
  - <u>budget</u>
  - <u>riserve</u> - di contingenza e di gestione
  - <u>tempistica</u>
  - <u>categorie di rischio</u> - tecnici, dell'organizzazione, ambientali, politici, di Project Management
  - <u>propensione al rischio degli stakeholder</u>
  - <u>scala della probabilità e dell'impatto dei rischi</u>
  - <u>matrice di probabilità ed impatto</u>
  - <u>formati di reporting</u>
  - <u>registrazione</u> - verbale che registra il modo in cui si sono gestiti i rischi

### Scala di probabilità e scala di impatto dei rischi

- i rischi possono essere di varia natura (software, hardware, tecnici, del personale)

- serve un metodo per uniformare la gestione dei rischi

  - si associa ad ogni rischio un <u>giudizio</u> (basso-medio-alto)
    - ad ogni giudizio si assegna 
      - un <u>numero</u> (0 - 10)
      - una <u>probabilità</u> che occorra

  <img src="img/Screenshot_18-10-2022_180028.png" alt="Screenshot_18-10-2022_18:00:28" style="zoom:67%;" />

  - si ripetono le stesse operazioni per <u>l'impatto</u>

  <img src="img/Screenshot_18-10-2022_180353.png" alt="Screenshot_18-10-2022_18:03:53" style="zoom:67%;" />

  - i valori numerici nei due casi sono differenti (sto dando più peso all'impatto)

  - **matrice di probabilità-impatto**

    - righe: probabilità
    - colonne: impatto
    - intersezione: probabilità * impatto

    <img src="img/Screenshot_18-10-2022_180756.png" alt="Screenshot_18-10-2022_18:07:56" style="zoom:67%;" />

    - i valori dividono la matrice in zone (grigio chiaro-scuro)

      - grigio scuro - rischi più pericolosi / opportunità migliori
      - grigio chiaro - rischi piccoli / peggiori opportunità

    - in base al valore si definiscono delle politiche di gestione:

      <img src="img/Screenshot_18-10-2022_181049.png" alt="Screenshot_18-10-2022_18:10:49" style="zoom:67%;" />

## Processo Identify Risks

- non esistono regole precise su come identificare i rischi
- simile all'analisi dei requisiti di un software
  - riunione con stakeholder
  - call con esperti
  - lesson learned
  - stime passate
  - registro stakeholder
    - informazioni su ognuno di essi
  - piani di gestione dei requisiti, dei costi, della schedulazione, delle risorse 
  - eventuali documenti contrattuali (es: penali)
- alcuni rischi possono diminuire nel tempo, altri aumentare
- **tecniche di raccolta dati**
  - brainstorming
  - checklist
  - interviste
- **tecniche di analisi dei dati**
  - analisi delle cause originarie (*Root Cause Identification*)
    - considerando le cause più importanti ho risolto la maggior parte dei rischi (regola 80-20)
  - analisi degli assunti e dei vincoli
  - <u>analisi SWOT</u>
  - analisi dei documenti
    - es: leggi, norme per prevenire rischi

- <u>analisi SWOT</u> (*Strenghts, Weaknesses, Opportunities and Threats*)

  - nasce da una matrice 2x2

    - righe: tipologia di cause
      - interne - dipendono dal mio gruppo
      - esterne - non dipendono da me
    - colonne:
      - positive
      - negative

    <img src="img/image_2022-10-18_18-23-42.png" alt="image_2022-10-18_18-23-42" style="zoom:67%;" />

  - metodologia

    - analisi dei punti di forza, rispetto al team e ai singoli componenti, rispetto al progetto, rispetto al prodotto/servizio che si deve realizzare, rispetto al cliente e in genere al contesto in cui si opera
    - analisi dei punti di debolezza rispetto alle stesse variabili sopra riportate
    - identificazione delle opportunità (rischi positivi) a partire dai punti di forza evidenziati
    - identificazione delle minacce (rischi negativi) a partire dai punti di debolezza evidenziati

​		