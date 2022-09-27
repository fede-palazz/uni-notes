# Gestione dell'integrazione del Progetto

- project manager come <u>integratore</u>
  - media le esigenze delle parti cercando di accontentare tutti
  - suddivide e ricompone il progetto in varie parti
  - può avvalersi del supporto di alcune figure:
    - **Project Management Team** (staff, parte amministrativa)
    - **Quality Manager** (norme ISO)
    - **Risk Manager**
    - **Contract Manager** (aiuta a redigere contratti)
    - **Planner**
    - **Cost Controller**
    - **PMO**

## Processi di Project Integration Management

- Processi
  - Sviluppare il Project Charter
  - Sviluppare il piano di Project Management
  - Dirigere e gestire il lavoro del progetto
  - Gestire le conoscenze di progetto
  - Monitorare e controllare il lavoro del progetto 
  - Eseguire il controllo integrato delle modifiche 
  - Chiudere il progetto o una fase
- Output ottenuti da questa area
  - project charter
    - documento con cui si da via al progetto
  - piano di project management
    - piano di ciò che si intende fare durante il progetto
  - deliverables
    - un progetto si spezza in tante parti
    - in ogni SAL bisogna consegnare un deliverable (documenti / prodotti)
  - richieste di modifica
    - da parte di stakeholders
    - possono essere accettate o rifiutate
  - registro delle lesson learned
    - quanto appreso durante l'esecuzione del progetto
  - transizione del prodotto
    - da azienda a cliente
  - report finale
    - sommario delle prestazioni del progetto
  - registro degli assunti
    - vincoli durante il progetto (es: rispetto GDPR)
  - registro delle questioni
    - problematiche che possono capitare durante un progetto (<u>issues</u>) e di come vengono risolte

## Fattori ambientali

- standard governativi o di qualità
- struttura organizzativa e cultura dell'azienda committente
- requisiti e vincoli legali
- aspettative e soglie di rischio degli stakeholder

## Processo Develop Project Charter

- prima del progetto

  - **studio di fattibilità**
  - **business case** 
    - obbiettivi, benefici, rischi, requisiti
    - svolto dall'azienda committente e dal PM come consulente
    - riguarda più il programma e il portfolio (è fuori dal contesto del progetto)

- project charter

  - documento che <u>autorizza formalmente il progetto</u>
  - lo redige il gruppo di progetto coordinato dal PM agli inizi dello stesso
  - eredita molte informazioni dal business case e dal piano di gestione dei benefici
  - contiene: 
    - <u>tempistiche, metriche</u> (KPI)
    - giustificazione del progetto, qualora non sia presente il business case di progetto;
    - obiettivi del progetto e criteri di misurazione del loro raggiungimento;
    - requisiti di alto livello, espressi da stakeholder importanti come il cliente, il management e lo sponsor stesso;
    - descrizione macro del progetto e dei principali deliverable;
    - rischiosità generale del progetto;
    - milestone principali e loro schedulazione;
    - risorse finanziarie preapprovate;
    - lista degli stakeholder primari;
    - requisiti per misurare il successo del progetto e per approvarlo;
    - project manager assegnato, sue responsabilità e livello d’autorità;
    - nome dell’iniziatore o sponsor che autorizza il progetto;
    - criteri di uscita e/o di annullamento del progetto
  - il PM partecipa agli studi di fattibilità, analisi dei benefici e stesura del business case

- metodi di selezione dei progetti

  - decidere quali progetti portare avanti e quali no

  - tecniche:

    - **Murder Board** - un gruppo cerca di convincere a non avviare il progetto
    
    - **Scoring Model** - si assegna ad ogni progetto uno score secondo alcuni parametri
    
    - **Economic Models** - uso di modelli economici per valutare benefici (economici e non)
    
    - **Benefit-cost Analysis** - analisi costi-benefici
    
    - **Tecniche di cash-flow** -  tecniche legate a una valutazione economico-finanziaria legata al tempo (richiesta di una percentuale iniziale del budget, incasso di una parte ad ogni SAL)
      - <u>Payback Period</u> (PBP) - Tempo necessario per recuperare l’investimento iniziale calcolato sui ricavi futuri del progetto
        - non tiene conto di oneri finanziari (inflazione)
        - PBP minore => progetto più favorevole
      
      - <u>Present Value</u> (PV)  - si basa sul concetto che “soldi presi in futuro valgono meno dei soldi presi oggi”
        - tiene conto dell'indice di interesse (inflazione)
        - PV alto => progetto più favorevole
      
        ![](/home/fede/Pictures/screenshots/Screenshot_27-09-2022_17:34:33.png)
      
      - <u>Net Present Value</u> (NPV)
      
        - di anno in anno ogni progetto ha un ritorno economico
        - contando il tasso di interesse, fare soldi prima vale di più che farli successivamente
        - formula precedente ma calcolata di anno in anno
        - NPV < 0 => perdita, NPV > 0 => guadagno
      
        ![](/home/fede/Pictures/screenshots/Screenshot_27-09-2022_17:32:48.png)
      
      - <u>Internal Rate of Return</u> (IRR)
      
        - valore del tasso di inflazione che deve esserci per azzerare l'investimento (NPV = 0)
      
        - IRR grande => più dovrebbe essere alto il tasso
      
        ![](/home/fede/Pictures/screenshots/Screenshot_27-09-2022_17:33:24.png)
    

## Processo Develop Project Management Plan

- pianificazione dettagliata di tutto, cerco di prevedere quello che accadrà dall'inizio alla fine del progetto
- raccolta di documenti che consiste in tre parti:
  - **piani di gestione ausiliari** - documenti delle regole e delle procedure per il governo delle varie tematiche del progetto
  - **baseline** - punto di partenza
    - <u>ambito</u>: deliverables da produrre, numero dei SAL, cosa produrre
    - <u>schedulazione</u>: definizione in dettaglio delle milestone (tappe prima di un SAL, solitamente 1 milestone al mese e 1 SAL ogni 3 mesi)
    - <u>costi</u>: budget a disposizione, mantenere il cash-flow positivo, stimare i guadagni
    - non dovrebbero essere mai modificate se non a fronte di richieste di modifiche approvate
  - **altre componenti**
    - <u>piano di gestione delle modifiche</u> - regole con le quali si richiedono e approvano modifiche
    - <u>piano di gestione della configurazione</u> - stabilire come tenere traccia delle descrizioni degli elementi del progetto e dei loro aggiornamenti
    - <u>baseline di misurazione delle prestazioni</u>
    - <u>ciclo di vita del progetto</u>
    - <u>approccio allo sviluppo</u> - predittivo, iterativo, agile, ibrido
    - <u>revisioni gestionali</u>

- **Kick-off meeting**
  - prima riunione in cui il Project Management Team incontra gli stakeholder per discutere del progetto
  - è un modo per conoscere l'azienda
  - insieme ai SAL dovrebbe essere svolto in presenza

## Processo Direct and Manage Project Work

- insegna al PM cosa vuol dire gestire un progetto
- il PM deve:
  - monitorare i <u>deliverables</u> mano a mano che vengono realizzati
  - erogare la <u>formazione necessaria</u> ai membri del team (es: programmatore Java -> Python)
  - gestire il <u>team</u>
  - gestire la <u>comunicazione</u>
  - prevenire rischi e decidere come reagire
  - raccogliere e gestire le <u>issues</u> (rischio che è diventato realtà)
  - valuta <u>richieste di modifica</u>
  - raccoglie i dati sullo <u>stato di avanzamento</u> del progetto (gestione dei SAL)
  - aggiorna i <u>documenti di progetto</u> (lesson learned, documentazione dei requisiti, registro degli stakeholder)
  - utilizza gran parte del <u>budget di Project Management</u>

- richieste di modifica
  - richieste di variazione che possono arrivare durante un progetto
  - si dividono in:
    - leggere 
      - gestite da questo processo
      - es: un tecnico se ne va, una persona si ammala
    - pesanti
    - entrambe gestite dal PM
  - tipologie:
    - <u>azione correttiva</u> - rimozione di una parte poco rilevante del progetto
    - <u>preventive</u> - atte a prevenire una casistica leggera
    - <u>correzione di difetto</u> - bug fix, rimozione di errori (obbligatoria)
- gestione dei deliverables
  - risultati pratici di un progetto
  - tipologie
    - tecnici (software)
    - tecnici-pdf (manuali)
    - gestionali
  - consegnati ad ogni SAL
  - misuratori di performance del progetto stabiliti (KPI)
    - forniscono una percezione dello stato d’avanzamento del progetto
  - **WP** (Work Package) - insieme dei deliverables di un SAL

## Processo Manage Project Knowledge

- gestione della conoscenza del progetto
- politiche che specificano come <u>memorizzare</u> la conoscenza attuale e <u>accedere</u> alla conoscenza passata
- la conoscenza viene memorizzata nella <u>Knowledge Base</u>
  - repository in cui si salvano le conoscenze apprese e la modulistica da usare in futuro
  - viene messa a disposizione dei progetti futuri
  - registro delle lesson learned

## Processo Monitor and Control Project Work

- il PM deve sempre verificare se quello che si prevede di fare corrisponde al piano iniziale o se ci sono degli scostamenti
- è un processo da eseguire in modo continuativo
- in caso di scostamenti bisognerebbe attuare le manovre necessarie atte a rientrare (<u>steering</u>)
- monitoraggio
  - si confronta lo stato di avanzamento con il piano
  - si verifica la presenza di cambiamenti
  - si mettono in atto le opportune modifiche (ogni scostamento va tracciato)
- tracciamento
  - alcuni software permettono di visualizzare lo stato di avanzamento preventivato e confrontarlo con quello reale