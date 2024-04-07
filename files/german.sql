
-- Apr 7, 2024, 9:25:06 PM UTC
UPDATE AD_Language SET IsSystemLanguage='Y', DatePattern='dd.MM.yyyy', TimePattern='HH:mm:ss', IsLoginLocale='Y',Updated=TO_TIMESTAMP('2024-04-07 21:25:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Language_ID=191
;

-- Apr 7, 2024, 9:30:41 PM UTC
UPDATE AD_Element_Trl SET Name='Anzeigelogik',PrintName='Anzeigelogik',Description='Wenn es sich um ein Anzeigefeld handelt, hängt es vom Ergebnis ab, ob das Feld tatsächlich angezeigt wird.',Help='format := {expression} [{logic} {expression}]<br> 
expression := @{context}@{operand}{value} or @{context}@{operand}{value}<br> 
logic := {|}|{&}<br>
context := any global or window context <br>
value := strings or numbers<br>
logic operators	:= AND or OR with the previous result from left to right <br>
operand := eq{=}, gt{&gt;}, le{&lt;}, not{~^!} <br>
Examples: <br>
@AD_Table_ID@=14 | @Language@!GERGER <br>
@PriceLimit@>10 | @PriceList@>@PriceActual@<br>
@Name@>J<br>
Strings may be in single quotes (optional)',Placeholder=NULL,PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:40','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Element_ID=283 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:41 PM UTC
UPDATE AD_Element_Trl SET Name='Belegnr.',PrintName='Belegnr.',Description='Die Nummer des Belegs im Nummernkreis',Help='Die Belegnummer wird normalerweise vom System automatisch generiert und bestimmt den Belegtyp. Bei nicht gespeicherten Belegen wird eine vorläufige Nummer in "<>" angezeigt.

Falls der Belegtyp des Belegs keine automatische Belegnummernkreis definiert hat, bleibt das Feld bei neu erstellten Belegen leer. Das ist für Belege die normalerweise eine externe Belegnummer besitzen, wie etwa die Eingangsrechnung eines Lieferanten. Wenn Sie das Feld leer lassen, wird durch das System eine Belegnummer erzeugt. Der für diese Belegnummer verwendete Belegnummernkreis wird im Fenster "Nummernkreis verwalten" mit dem Namen "DocumentNo_<TableName>" definiert. TableName ist dabei der tatsächliche Name der Tabelle (z.B. C_Order).',Placeholder=NULL,PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:40','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Element_ID=290 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:41 PM UTC
UPDATE AD_Element_Trl SET Name='Format der Telefonnummer',PrintName='Format der Telefonnummer',Description='Das Format einer Telefonnummer; Kann feste Formatelemente enthalten, Variablen: "_lLoOaAcCa09"',Help='<B>Validation elements:</B>
 	(Space) any character
_	Space (fixed character)
l	any Letter a..Z NO space
L	any Letter a..Z NO space converted to upper case
o	any Letter a..Z or space
O	any Letter a..Z or space converted to upper case
a	any Letters & Digits NO space
A	any Letters & Digits NO space converted to upper case
c	any Letters & Digits or space
C	any Letters & Digits or space converted to upper case
0	Digits 0..9 NO space
9	Digits 0..9 or space

Example of format "(000)_000-0000"',Placeholder=NULL,PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:40','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Element_ID=298 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:41 PM UTC
UPDATE AD_Element_Trl SET Name='Format der PLZ',PrintName='Format der PLZ',Description='Das Format einer Postleitzahl; Kann feste Format-Elemente enthalten, Variablen: "_lLoOaAcCa09".',Help='<B>Validation elements:</B>
 	(Space) any character
_	Space (fixed character)
l	any Letter a..Z NO space
L	any Letter a..Z NO space converted to upper case
o	any Letter a..Z or space
O	any Letter a..Z or space converted to upper case
a	any Letters & Digits NO space
A	any Letters & Digits NO space converted to upper case
c	any Letters & Digits or space
C	any Letters & Digits or space converted to upper case
0	Digits 0..9 NO space
9	Digits 0..9 or space

Example of format "(000)_000-0000"',Placeholder=NULL,PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:40','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Element_ID=299 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:41 PM UTC
UPDATE AD_Element_Trl SET Name='Format PLZ-Zusatz',PrintName='Format PLZ-Zusatz',Description='Das Format eines Werts; kann feste Formatelemente enthalten, Variablen: "_lLoOaAcCa09".',Help='<B>Validation elements:</B>
 	(Space) any character
_	Space (fixed character)
l	any Letter a..Z NO space
L	any Letter a..Z NO space converted to upper case
o	any Letter a..Z or space
O	any Letter a..Z or space converted to upper case
a	any Letters & Digits NO space
A	any Letters & Digits NO space converted to upper case
c	any Letters & Digits or space
C	any Letters & Digits or space converted to upper case
0	Digits 0..9 NO space
9	Digits 0..9 or space

Example of format "(000)_000-0000"',Placeholder=NULL,PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:40','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Element_ID=300 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:41 PM UTC
UPDATE AD_Element_Trl SET Name='Werteformat',PrintName='Werteformat',Description='Das Format eines Werts; kann feste Formatelemente enthalten, Variablen: "_lLoOaAcCa09".',Help='<B>Validation elements:</B>
 	(Space) any character
_	Space (fixed character)
l	any Letter a..Z NO space
L	any Letter a..Z NO space converted to upper case
o	any Letter a..Z or space
O	any Letter a..Z or space converted to upper case
a	any Letters & Digits NO space
A	any Letters & Digits NO space converted to upper case
c	any Letters & Digits or space
C	any Letters & Digits or space converted to upper case
0	Digits 0..9 NO space
9	Digits 0..9 or space

Example of format "(000)_000-0000"',Placeholder=NULL,PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:40','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Element_ID=616 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:41 PM UTC
UPDATE AD_Element_Trl SET Name='Unterart Auftrag',PrintName='Unterart Auftrag',Description='Unterart Auftrag',Help='The SO Sub Type indicates the type of sales order this document refers to.  This field only appears when the Document Base Type is Sales Order.  The selection made here will determine which documents will be generated when an order is processed and which documents must be generated manually or in batches.  <br>
The following outlines this process.<br>
SO Sub Type of <b>Standard Order</b> will generate just the <b>Order</b> document when the order is processed.  <br>
The <b>Delivery Note</b>, <b>Invoice</b> and <b>Receipt</b> must be generated via other processes.  <br>
SO Sub Type of <b>Warehouse Order</b> will generate the <b>Order</b> and <b>Delivery Note</b>. <br> The <b>Invoice</b> and <b>Receipt</b> must be generated via other processes.<br>
SO Sub Type of <b>Credit Order</b> will generate the <b>Order</b>, <b>Delivery Note</b> and <b>Invoice</b>. <br> The <b>Receipt</b> must be generated via other processes.<br>
SO Sub Type of <b>POS</b> (Point of Sale) will generate all document',Placeholder=NULL,PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:40','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Element_ID=1018 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:41 PM UTC
UPDATE AD_Element_Trl SET Name='E-Mail-Vorlage',PrintName='E-Mail-Vorlage',Description='Texttemplates für E-Mails.',Help='Die E-Mail-Vorlage kennzeichnet die Vorlage die für Rückantworten verwendet wird. Der E-Mail Text kann Variablen beinhalten. Die Priorität der Auswertung ist Benutzer/Kontakt, Geschäftspartner und dann die zugrundeliegenden Geschäftsobjekte (wie Anfrage, Mahnung, Workflow-Objekt).<br>
Entsprechend @Name@ würde als Benutzername ausgewertet (falls der Benutzer definiert ist), dann Geschäftspartnername (falls Geschäftspartner definiert ist) und schließlich als Name des Geschäftsobjekts, falls es einen Namen hat.<br>
Für mehrsprachige Systeme wird die Vorlage entsprechend den Spracheinstellungen des Geschäftspartners übersetzt.',Placeholder=NULL,PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:40','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Element_ID=1515 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:41 PM UTC
UPDATE AD_Element_Trl SET Name='Schreibschutzlogik',PrintName='Schreibschutzlogik',Description='Logik zur Festlegung eines schreibgeschützten Feldes. Wird nur auf Feldern angewendet, in die geschrieben werden kann.',Help='format := {expression} [{logic} {expression}]<br> 
expression := @{context}@{operand}{value} or @{context}@{operand}{value}<br> 
logic := {|}|{&}<br>
context := any global or window context <br>
value := strings or numbers<br>
logic operators	:= AND or OR with the previous result from left to right <br>
operand := eq{=}, gt{&gt;}, le{&lt;}, not{~^!} <br>
Examples: <br>
@AD_Table_ID@=14 | @Language@!GERGER <br>
@PriceLimit@>10 | @PriceList@>@PriceActual@<br>
@Name@>J<br>
Strings may be in single quotes (optional)',Placeholder=NULL,PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:40','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Element_ID=1663 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:41 PM UTC
UPDATE AD_Element_Trl SET Name='Replikationsart',PrintName='Replikationsart',Description='Art der Datenreplikation',Help='Der Typ der Datenreplikation bestimmt die Richtung der Datenreplikation. 
"Referenz" bedeutet, dass die Daten in diesem System schreibgeschützt sind "Lokal" bedeutet, dass die Daten in diesem System nicht mit anderen System repliziert werden "Merge" bedeutet, dass die Daten in diesem System mit einem anderen System synchronisiert werden',Placeholder=NULL,PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:40','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Element_ID=2137 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:41 PM UTC
UPDATE AD_Element_Trl SET Name='Projektkategorie',PrintName='Projektkategorie',Description='Projektkategorie',Help='Die Projektkategorie bestimmt das Projektverhalten:
Standard - keine spezielle Buchführung, z.B. für Presales oder allgemeines Tracking
Dienstleistung - keine spezielle Buchführung, z.B. für Dienstleistungsprojekte
Arbeitsauftrag - erzeugt Projekt/Job WIP Transaktionen - Fähigkeit Material auszugeben
Asset - erzeugen von Projekt Asset Transaktionen - Fähigkeit Material auszugeben',Placeholder=NULL,PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:40','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Element_ID=2179 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:41 PM UTC
UPDATE AD_Element_Trl SET Name='Offener Saldo',PrintName='Offener Saldo',Description='Gesamtbetrag "Offener Saldo" in primärer Buchungswährung.',Help='The Total Open Balance Amount is the calculated open item amount for Customer and Vendor activity.  If the Balance is below zero, we owe the Business Partner.  The amout is used for Credit Management.
Invoices and Payment Allocations determine the Open Balance (i.e. not Orders or Payments).',Placeholder=NULL,PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:40','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Element_ID=2562 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:41 PM UTC
UPDATE AD_Element_Trl SET Name='Belegwertlogik',PrintName='Belegwertlogik',Description='Logik um den Start eines Workflows festzulegen. Wenn "true", wird der Workflow-Prozess für einen Beleg gestartet.',Help='You can enter simple logic using variables like @Created@=@Updated@, which fires, when a record is created. If you need to evaluate also values of other records, you need to use SQL logic and need to prefix this logic with "SQL=". Example: start a Order verify workflow, when a business partner ordered something and is over the credit limit  "SQL=EXISTS (SELECT * FROM C_BPartner bp WHERE C_Order. C_BPartner_ID=bp. C_BPartner_ID AND SO_CreditUsed > SO_CreditLimit)".
Note that the SQL based logic checks for duplicate workflows (i.e. a workflow is started only once per record).',Placeholder=NULL,PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:40','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Element_ID=2624 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:42 PM UTC
UPDATE AD_Element_Trl SET Name='Modellvalidierungsklassen',PrintName='Modellvalidierungsklassen',Description='Liste von Modellvalidierungsklassen getrennt durch ";".',Help='List of classes implementing the interface org.compiere.model.ModelValidator, separaed by semicolon.
The class is called for the client and alows to validate documents in the prepare stage and monitor model changes.',Placeholder=NULL,PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:40','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Element_ID=2670 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:42 PM UTC
UPDATE AD_Element_Trl SET Name='Datentyp Leistung',PrintName='Datentyp',Description='Datentyp - Status oder In Time.',Help='Status represents values valid at a certain time (e.g. Open Invoices) - No history is maintained.<br>
Time represents a values at a given time (e.g. Invoice Amount on 1/1) - History is maintained',Placeholder=NULL,PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:40','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Element_ID=2920 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:42 PM UTC
UPDATE AD_Element_Trl SET Name='Bestand Produktionsstätte',PrintName='Konto für den "Bestand Produktionsstätte".',Description='Das Konto für den "Bestand Produktionsstätte" wird für Arbeitsaufträge verwendet.',Help='The Floor Stock is used for accounting the component with Issue method  is set Floor stock  into Bill of Material & Formula Window.

The components with Issue Method  defined as Floor stock is acounting next way:

Debit Floor Stock Account
Credit Work in Process Account',Placeholder=NULL,PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:40','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Element_ID=53726 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:42 PM UTC
UPDATE AD_Element_Trl SET Name='Externe Bearbeitungsschritte',PrintName='Konto für Belastungen',Description='Das Konto "Externe Bearbeitungsschritte" wird für Arbeitsaufträge verwendet.',Help='Das Konto "Externe Bearbeitungsschritte" wird zur Buchung externer Bearbeitungsschritte
 verwendet.',Placeholder=NULL,PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:40','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Element_ID=53730 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:42 PM UTC
UPDATE AD_Element_Trl SET Name='Layout-Typ-Schlüsse',PrintName='Layout-Typ-Schlüsse',Description='Typ des Layout Schlüssels ',Help='Tastatur: Verwendet im Textfeld der Bildschirmtastatur <br>>
Nummernblock: Verwendet im Nummernblock der Bildschirmtastatur <br>> 
Artikel: Verwendet um schnell Artikel in der Position aufzunehmen <br>>',Placeholder=NULL,PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:40','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Element_ID=54140 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:44 PM UTC
UPDATE AD_Element_Trl SET Name='Title Logic',PrintName='Title Logic',Description='The result determines the title to be displayed for this window',Help='The result determines the title to be displayed for this Window, used also as the label for Recent Items.
Format is just one or several context variables surrounded by @, examples:
@TaxID@
@DocumentNo@
@Value@ @Name@
if this field is left empty a default title/label is created using the DocumentNo, Value and Name fields if they exist.',Placeholder=NULL,PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:40','YYYY-MM-DD HH24:MI:SS'),IsTranslated='N' WHERE AD_Element_ID=202611 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:44 PM UTC
UPDATE AD_Element_Trl SET Name='Zoom Logic',PrintName='Zoom Logic',Description='the result determines if the zoom condition is applied',Help='format := {expression} [{logic} {expression}]<br> 
expression := @{context}@{operand}{value} or @{context}@{operand}{value}<br> 
logic := {|}|{&}<br>
context := any global or window context <br>
value := strings or numbers<br>
logic operators	:= AND or OR with the previous result from left to right <br>
operand := eq{=}, gt{&gt;}, le{&lt;}, not{~^!} <br>
Examples: <br>
@AD_Table_ID@=14 | @Language@!GERGER <br>
@PriceLimit@>10 | @PriceList@>@PriceActual@<br>
@Name@>J<br>
Strings may be in single quotes (optional)',Placeholder=NULL,PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:40','YYYY-MM-DD HH24:MI:SS'),IsTranslated='N' WHERE AD_Element_ID=202629 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:44 PM UTC
UPDATE AD_Element_Trl SET Name='Parent Related Column',PrintName='Parent Related Column',Description='column in parent info window, link with column in this relate info',Help='default column RelatedColumn in Relate Info window will link with key column of main info window
column define in ParentRelatedColumn will replace key column',Placeholder=NULL,PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:40','YYYY-MM-DD HH24:MI:SS'),IsTranslated='N' WHERE AD_Element_ID=202792 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:44 PM UTC
UPDATE AD_Element_Trl SET Name='Days Reuse Password',PrintName='Days Reuse Password',Description='Define number of day can reuser password',Help='Each time change password, old password keep in history
Example this value = 60. user can''t reuse password in history has age < 60
',Placeholder=NULL,PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:40','YYYY-MM-DD HH24:MI:SS'),IsTranslated='N' WHERE AD_Element_ID=202868 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:44 PM UTC
UPDATE AD_Element_Trl SET Name='Parallele Ausführung',PrintName='Parallele Ausführung',Description='Erlaubt oder verbietet die Ausführung eines Berichts / Prozesses mehrfach parallel.',Help='1. Parallele Ausführung verbieten: niemals zulassen, dass ein Prozess gestartet wird, der bereits läuft.
2. Parallele Ausführung mit denselben Parametern verbieten: Erlaubt, den Prozess mit unterschiedlichen Parametern parallel zu starten.
3. Falls leer: der Prozess darf beliebig oft parallel gestartet werden.',Placeholder=NULL,PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:40','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Element_ID=203269 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:44 PM UTC
UPDATE AD_Field_Trl SET Name='Account Conversion Date',Description='Accounting Conversion Date',Help='The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.
The Accounting Date on Bank/Cash Statement Line is used for currency conversion and reporting purposes, the accounting is posted using the header date account.',Placeholder=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:44','YYYY-MM-DD HH24:MI:SS'),IsTranslated='N' WHERE AD_Field_ID=4121 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:44 PM UTC
UPDATE AD_Field_Trl SET Name='Belegnr.',Description='Die Nummer des Belegs im Nummernkreis',Help='Die Belegnummer wird normalerweise vom System automatisch generiert und bestimmt den Belegtyp. Bei nicht gespeicherten Belegen wird eine vorläufige Nummer in "<>" angezeigt.

Falls der Belegtyp des Belegs keine automatische Belegnummernkreis definiert hat, bleibt das Feld bei neu erstellten Belegen leer. Das ist für Belege die normalerweise eine externe Belegnummer besitzen, wie etwa die Eingangsrechnung eines Lieferanten. Wenn Sie das Feld leer lassen, wird durch das System eine Belegnummer erzeugt. Der für diese Belegnummer verwendete Belegnummernkreis wird im Fenster "Nummernkreis verwalten" mit dem Namen "DocumentNo_<TableName>" definiert. TableName ist dabei der tatsächliche Name der Tabelle (z.B. C_Order).',Placeholder=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:44','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Field_ID=8985 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:44 PM UTC
UPDATE AD_Field_Trl SET Name='Column SQL',Description='Virtual Column (r/o)',Help='You can define virtual columns (not stored in the database). If defined, the Column name is the synonym of the SQL expression defined here. The SQL expression must be valid.<br>
Example: "Updated-Created" would list the age of the entry in days.<br>
It is not recommended to add complex queries in virtual columns as the impact on the database performance can be too expensive.<br>
However, you can use the prefix @SQLFIND= for virtual columns that can be used for queries and reports, they have less impact on the database, but as a field they don''t show values.<br>
Additionally, the prefix @SQL= allows to define a virtual UI column, this is calculated on the fly and can use context variables in the query, virtual UI columns are shown in grid just on the current row, they are not searchable, and not shown in reports.',Placeholder=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:44','YYYY-MM-DD HH24:MI:SS'),IsTranslated='N' WHERE AD_Field_ID=11264 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:44 PM UTC
UPDATE AD_Field_Trl SET Name='Validation code',Description='Validation Code',Help='The Validation Code displays the date, time and message of the error.

You can add advanced SQL queries to your searches by filling this field with @SQL=[WHERE CLAUSE].
Do not include the WHERE statement and use Fully qualified SQL statements. F.e:

@SQL=C_Order.isActive=''Y'' AND SalesRep_ID=@AD_User_ID@ 

will filter orders by active and where the sales representative is the current user.',Placeholder=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:44','YYYY-MM-DD HH24:MI:SS'),IsTranslated='N' WHERE AD_Field_ID=12249 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:44 PM UTC
UPDATE AD_Field_Trl SET Name='Benutzername',Description='Benutzername/Login für die Anmeldung',Help='Benutzername/Login für die Anmeldung
E-Mail der für das System verantwortlichen Person (im Webshop registriert)',Placeholder=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:44','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Field_ID=13179 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:44 PM UTC
UPDATE AD_Field_Trl SET Name='Gültig ab',Description='Gültig ab diesem Tag (erster Tag)',Help='Das Gültig ab Datum zeigt den ersten Tag eines Datumsbereichs.
Wenn Sie Datumswerte in die Felder Gültig ab - bis eingeben, ermitteln wir die Zeitspanne in der diese Operation zur Artikelerstellung eingeplant werden sollte.',Placeholder=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:44','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Field_ID=53380 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:44 PM UTC
UPDATE AD_Field_Trl SET Name='Gültig bis',Description='Gültig bis zu diesem Tag (letzter Tag)',Help='Das Gültig bis Datum zeigt den letzten Tag eines Datumsbereichs.
Wenn Sie Datumswerte in die Felder Gültig ab - bis eingeben, ermitteln wir die Zeitspanne in der diese Operation zur Artikelerstellung eingeplant werden sollte.',Placeholder=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:44','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Field_ID=53381 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:44 PM UTC
UPDATE AD_Field_Trl SET Name='Validation code',Description='Validation Code',Help='The Validation Code displays the date, time and message of the error.

You can add advanced SQL queries to your searches by filling this field with @SQL=[WHERE CLAUSE].
Do not include the WHERE statement and use Fully qualified SQL statements. F.e:

@SQL=C_Order.isActive=''Y'' AND SalesRep_ID=@AD_User_ID@ 

will filter orders by active and where the sales representative is the current user.',Placeholder=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:44','YYYY-MM-DD HH24:MI:SS'),IsTranslated='N' WHERE AD_Field_ID=206305 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:44 PM UTC
UPDATE AD_Form_Trl SET Name='Lieferscheine erzeugen (manuell)',Description='Auswahl und Erzeugung von Lieferscheinen',Help='Lieferscheine aus Aufträgen erzeugen.
Aufträge auswählen für die Lieferscheine erzeugt werden sollen.',Updated=TO_TIMESTAMP('2024-04-07 21:30:44','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Form_ID=110 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:44 PM UTC
UPDATE AD_Form_Trl SET Name='Einträge verschmelzen',Description='Verschmelze Quelleintrag mit Zieleintrag - Quelleintrag löschen',Help='<i>Vorsicht - Seien Sie sich bewusst was Sie tun!</i>
Alle Instanzen der Von-Entität (z.B. Kunde A) werden in die Nach-Entität (z.B. Kunde B) geändert.Die Von-Entität (z.B. Kunde A) wird gelöscht.<p><b>Das kann nicht Rückgängig gemacht werden! Bitte zuerst ein Backup erstellen. </b>Seien Sie sich bewusst dass möglicherweise auch die Historie geändert wird (z.B. Rechnungen, etc.)!</p><p><b>Seiteneffekte:</b> Verschmelzen von Artikeln verzerren wahrscheinlich die Artikelkosten; Verschmelzen von Geschäftspartnern kann zu inkonsistenten Salden führen.
<p><b>Einschränkungen:</b> Buchführungs- und Bestandskonflikte werden in dieser Version nicht behoben.',Updated=TO_TIMESTAMP('2024-04-07 21:30:44','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Form_ID=112 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:44 PM UTC
UPDATE AD_Form_Trl SET Name=' Stückliste & Formel Info',Description='Zeigt die Eltern-Komponente-Beziehung für den im Artikelfeld angegebenen Artikel in zwei verschiedenen Fensterbereichen.',Help='The BOM & Formula Review option menu shows in two different panels the parent-component relationship for the product entered in the Product field.

You need to introduce the parent product you want to see its components then click the OK button, next drag the left margin of the panel to the right and you will have the two panels.

When you need to consult an implosion, click the implosion check box and enter the component you wish to consult and tick the Implosion check box.

You need to introduce the parent product you want to see its components then click the OK button, next drag the left margin of the panel to the right and you will have the two panels.

The left panel shows the BOM hierarchies in a tree form. The right panel shows the information connected with the BOM for every product in it',Updated=TO_TIMESTAMP('2024-04-07 21:30:44','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Form_ID=53001 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:44 PM UTC
UPDATE AD_Message_Trl SET MsgText='Ein Problem mit der Kreditkartennummer scheint vorzuliegen.
Fortfahren?',MsgTip=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:44','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Message_ID=200 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:44 PM UTC
UPDATE AD_Message_Trl SET MsgText='Die Maßeinheit eines Artikels muss die kleinste vorhandene sein',MsgTip='Der Divisor muß >= 1 und immer zu einer gültigen Maßeinheit führen. 
Beispiel: Um Stück nach Paar umzurechnen muß der Multiplikator 0,5 sein',Updated=TO_TIMESTAMP('2024-04-07 21:30:44','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Message_ID=790 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:44 PM UTC
UPDATE AD_Message_Trl SET MsgText='Sehr viele Datensätze werden ermittelt.
Fortfahren?',MsgTip=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:44','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Message_ID=838 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:45 PM UTC
UPDATE AD_Process_Para_Trl SET Name='Anfrageordner',Description='Nachdem eine E-Mail aus dem Posteingang übernommen und erfolgreich verarbeitet wurde, wird sie in diesen Ordner verschoben',Help=E'Der Ordner kann hierarchisch definiert werden, benutzen Sie "\\" um die Ordnernamen zu trennen. Beispiel: kunden\\vietnam 
wird eine E-Mail aus dem Posteingang übernehmen und nach erfolgreicher Verarbeitung sie in diesen Ordner verschieben',Placeholder=NULL,Placeholder2=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:45','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Process_Para_ID=50009 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:45 PM UTC
UPDATE AD_Process_Para_Trl SET Name='Posteingang',Description='Mail-Ordner, aus dem der Prozess E-Mail lesen und Anfragen erzeugen wird',Help=E'Der Ordner kann hierarchisch definiert werden, benutzen Sie "\\" um die Ordnernamen zu trennen. Beispiel: kunden\\vietnam
liest E-Mail aus dem Ordner vietnam unter dem Ordner kunden',Placeholder=NULL,Placeholder2=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:45','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Process_Para_ID=50010 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:45 PM UTC
UPDATE AD_Process_Para_Trl SET Name='Fehlerordner',Description='Mail-Ordner, in den E-Mails verschoben werden, die nicht erfolgreich verarbeitet wurden.',Help=E'Der Ordner kann hierarchisch definiert werden, benutzen Sie "\\" um die Ordnernamen zu trennen. Beispiel: kunden\\vietnam
wird E-Mail, die nicht verarbeitet werden konnte, in den Ordner vietnam unter dem Ordner kunden verschieben',Placeholder=NULL,Placeholder2=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:45','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Process_Para_ID=50011 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:45 PM UTC
UPDATE AD_Process_Para_Trl SET Name='Posteingang als Wurzelordner',Description='Anhaken, wenn andere Ordner (Anfrage, Fehler, ...) im Posteingangsordner liegen',Help='Manche E-Mail-Server hängen andere Ordner immer im Posteingang ein, andere erlauben es, sie parallel einzuhängen.
Die Feld sagt, wo sie angelegt werden.',Placeholder=NULL,Placeholder2=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:45','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Process_Para_ID=200121 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:45 PM UTC
UPDATE AD_Process_Trl SET Name='Lieferscheine erzeugen',Description='Erzeugen und drucken Sie Lieferscheine aus offenen Aufträgen',Help='Lieferscheine für offen Aufträge werden erstellt basierend auf der Lieferart sowie der relativen Priorität des Auftrags. Falls ein Zusagedatum angegeben ist, werden nur Aufträge bis zu diesem Datum berücksichtigt. 
Falls mehrere Aufträge eines Geschäftspartners denselben Standort haben, können die Aufträge in einer Lieferung zusammengefasst werden. 
Es können auch Aufträge eingeschlossen werden, die ausstehende Bestätigungen haben (z.B. bestellt=10 - unbestätigte Lieferungen=4 - würde eine neue Lieferung von 6 erzeugen, falls verfügbar).',Updated=TO_TIMESTAMP('2024-04-07 21:30:45','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Process_ID=118 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:45 PM UTC
UPDATE AD_Process_Trl SET Name='Sprachverwaltung',Description='Verwaltung Systemübersetzung.',Help='Sie können - fehlende Übersetzungseinträge hinzufügen (erforderlich nachdem eine zusätzliche Systemsprache aktiviert wurde) - Übersetzungseinträge löschen oder - die Übersetzungseinträge neu erstellen (zuerst löschen und fehlende Einträge hinzufügen) 
Bitte beachten, dass "fehlende Übersetzungseinträge hinzufügen" diese als Kopien der Systemsprache "Englisch" erzeugt. Nach diesem Vorgang sollte ein Sprachpaket angewendet werden. Anschließend sollte "Terminologie synchronisieren" ausgeführt werden.',Updated=TO_TIMESTAMP('2024-04-07 21:30:45','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Process_ID=179 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:45 PM UTC
UPDATE AD_Process_Trl SET Name='Bestellung aus Kundenauftrag erzeugen',Description='Erstellen Sie eine Bestellung aus einem Auftrag',Help='Nach Fertigstellung von Aufträgen kann einer oder mehrere Bestellungen für jeden Auftrag erstellt werden. Eine Bestellung referenziert immer nur einen Auftrag (d.h. keine Konsolidierung von Aufträgen). Die Organisation des Auftrags wird verwendet um die Bestellung zu erzeugen. Falls ein Standardbelegtyp für die Bestellung auf Organisationsebene festgelegt ist, so wird dieser verwendet anstelle der auf Mandantenebene definierten Belegtypen. 
Bestellungen werden für alle Auftragspositionen erzeugt bei denen das Artikel einen aktuellen Lieferanten hat, der Lieferant eine Preisliste hinterlegt hat mit allen Artikeln auf der neuesten Version der Preisliste. Die Maßeinheit wird kopiert. Bestellung und Auftrag können unterschiedliche Währungen haben. Wenn der Prozess einmal gelaufen ist, ist es erforderlich Auftrag/Bestellung manuell zu synchronisieren - speziell falls Positionen hinzugefügt oder geändert werden (Artikel & Menge).',Updated=TO_TIMESTAMP('2024-04-07 21:30:45','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Process_ID=193 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:45 PM UTC
UPDATE AD_Process_Trl SET Name='Import Artikel',Description='Importieren Sie Artikel aus einer Datei in die Anwendung',Help='Import Products will bring a file of products, in a predefined format into the application.<p>
The Parameters are default values for null import record values, they do not overwrite any data.<p>
If you select an existing price list and you have List, Standard, and Limit Price defined, they are directly created/updated.',Updated=TO_TIMESTAMP('2024-04-07 21:30:45','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Process_ID=196 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:45 PM UTC
UPDATE AD_Process_Trl SET Name='E-Mail-Text senden',Description='Sende E-Mails an aktive Abonnenten eines Interessengebietes oder eine Geschäftspartnergruppe vom ausgewählten Benutzer',Help='Select the Interest Area to which subscribers you send the Mail Text from the User selected.  Additionally, you can send mails to the Contacts of a Business Partner Group.<br>
The User to send emails from needs to have valid EMail information. If you don''t select a user, the Mail is sent from the Client''s Request Mail User.',Updated=TO_TIMESTAMP('2024-04-07 21:30:45','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Process_ID=209 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:45 PM UTC
UPDATE AD_Process_Trl SET Name='Projekttyp setzen',Description='Legen Sie den Projekttyp fest. Für Serviceprojekte kopieren Sie Phasen und Aufgaben des Projekttyps in das Projekt',Help='
',Updated=TO_TIMESTAMP('2024-04-07 21:30:45','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Process_ID=215 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:45 PM UTC
UPDATE AD_Process_Trl SET Name='Bestellung aus Projekt erzeugen',Description='Bestellungen aus Projektposition(en) erzeugen',Help='
',Updated=TO_TIMESTAMP('2024-04-07 21:30:45','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Process_ID=225 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:45 PM UTC
UPDATE AD_Process_Trl SET Name='Belegarten überprüfen',Description='Belegarten und Periodensteuerungen verifizieren',Help='Stellt sicher, dass ein DocumentType für alle Basis-Belegarten existiert.<br>
Erzeugt fehlende Periodensteuerungen für die Belegart (müssen ggf. geöffnet werden)',Updated=TO_TIMESTAMP('2024-04-07 21:30:45','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Process_ID=233 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:45 PM UTC
UPDATE AD_Process_Trl SET Name='Zuordnung Geschäftspartner erstellen',Description='Definieren und überprüfen Sie die Organisationszugehörigkeit eines Geschäftspartners',Help='Der Prozess erlaubt es die Eigentümerschaft der Organisation zu überprüfen oder zu ändern sowie die der abhängigen Elemente (Standort, Kontakt/Benutzer, Bankkonto, Einbehalt). <br>
Geschäftspartnergruppe oder bestimmten Geschäftspartner auswählen',Updated=TO_TIMESTAMP('2024-04-07 21:30:45','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Process_ID=246 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:45 PM UTC
UPDATE AD_Process_Trl SET Name='Automatische Zuordnung',Description='Automatische Zuordnung von Rechnungen zu Zahlungen',Help='Try to allocate invoices to payments for a business partner or group.  You may want to reset existing allocations first.<br>
The allocation is based on (1) payments entered with reference to invoices (2) payment selections (3) business partner balance (4) matching amount of invoice & payment.  Allocation is based on exact amount and includes AP/AR imvoices/payments.<br>
Optionally as (5), you can enable to allocate payments to the oldest invoice. In this case, there might be an unallocated amount remaining.',Updated=TO_TIMESTAMP('2024-04-07 21:30:45','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Process_ID=302 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:45 PM UTC
UPDATE AD_Process_Trl SET Name='Spaltenverschlüsselung',Description='Testen und aktivieren Sie die Spaltenverschlüsselung',Help='To enable storage encryption or remove encryption is dangerous as you may loose data. You need to verify that the column is big enough to hold the encrypted value.  You can provide your own encryption method, but cannot change it once enabled.  <br>
The default implementation supports US ASCII String conversion (not Unicode, Numbers, Dates)<br>
Note that support is restricted to setup and test, but not data recovery.',Updated=TO_TIMESTAMP('2024-04-07 21:30:45','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Process_ID=328 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:45 PM UTC
UPDATE AD_Process_Trl SET Name='Mehrstufige Stückliste & Formel Details',Description='Zeigt die Eltern-Komponente-Beziehung für den im Artikelfeld angegebenen Artikel in zwei verschiedenen Fensterbereichen.',Help='The BOM & Formula Review option menu shows in two different panels the parent-component relationship for the product entered in the Product field.

You need to introduce the parent product you want to see its components then click the OK button, next drag the left margin of the panel to the right and you will have the two panels.

When you need to consult an implosion, click the implosion check box and enter the component you wish to consult and tick the Implosion check box.

You need to introduce the parent product you want to see its components then click the OK button, next drag the left margin of the panel to the right and you will have the two panels.

The left panel shows the BOM hierarchies in a tree form. The right panel shows the information connected with the BOM for every product in it.',Updated=TO_TIMESTAMP('2024-04-07 21:30:45','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Process_ID=53006 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:45 PM UTC
UPDATE AD_Process_Trl SET Name='Bewegung erzeugen',Description='Erzeugen Sie Bestandsbewegungen aus offenen Distributionsaufträgen und drucken Sie diese.',Help='Movement for open Distribution Orders are created based on the delivery rule of the Distribution Order and the relative order priority.  If a Promise Date is selected only orders up to (including) the date are selected.<br>
If several Distribution Orders of a business partner have the same location, the Distribution orders can be consolidated into one Movement.<br>
You can also include Distibution orders who have outstanding confirmations (e.g. ordered=10 - not confirmed movements=4 - would create a new movement of 6 if available).',Updated=TO_TIMESTAMP('2024-04-07 21:30:45','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Process_ID=53046 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:45 PM UTC
UPDATE AD_Process_Trl SET Name='Bill of Material & Formula Cost Roll-UP',Description='This Process allow integrate Bill of Material & Formula Cost',Help='This Process allow integrate Bill of Material & Formula Cost

Element Cost = Element Cost this level + Element Cost this low level 

Total BOM Cost = Sum every Element Cost',Updated=TO_TIMESTAMP('2024-04-07 21:30:45','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Process_ID=53062 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:45 PM UTC
UPDATE AD_Process_Trl SET Name='Vermögenswert importieren',Description='Importieren Sie die Vermögenswerte aus einer Datei in das System',Help='Import Asset will bring a file of Asset in a predefined format into the application.<p>
The Parameters are default values for null import record values they do not overwrite any data.',Updated=TO_TIMESTAMP('2024-04-07 21:30:45','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Process_ID=53139 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:45 PM UTC
UPDATE AD_Process_Trl SET Name='Basissprache ändern',Description='Basissprache ändern',Help='Um en_US als Übersetzung aktivieren zu können, können Sie eine andere Sprache als Basissprache aktivieren.
Wenn Sie gar keine Basissprache haben wollen (also alle Sprachen als Übersetzung), dann wählen Sie eine Sprache als Basissprache, die nicht für Anmeldungen benutzt wird.
Wenn alle Sprachen auch für die Anmeldung verwendet werden, dann erzeugen Sie eine Sprache xx_XX, mit der Sie sich nicht anmelden und benutzen diese als Basissprache.
Bedenken Sie, dass die Basissprache nicht Systemsprache sein kann.',Updated=TO_TIMESTAMP('2024-04-07 21:30:45','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Process_ID=200040 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:45 PM UTC
UPDATE AD_Process_Trl SET Name='Pack In aus Ordner anwenden',Description='Wendet alle zip-Dateien aus einem Ordner so an, wie das der automatische Pack In-Prozess tut',Help='<p>Dieser Prozess wendet alle Pack In-Dateien aus einem Ordner rekursiv an, sortiert nach Datumsstempel.<br />
Der Dateiname der Pack In-Dateien ist wichtig, er muss folgender Muster entsprechen:<br />
[Zeitstempel]_[Mandantensatznummer][_weitereInformationen].zip</p>

<ul>
	<li><strong>Zeitstempel:</strong> muss im format yyyymmddHHMM vorliegen</li>
	<li><strong>Mandantensatznummer:</strong> wird mit AD_Client.Value (Fenster Mandant, Feld Satznummer) verglichen, um den Mandanten zu finden, für den das Pack In angewandt werden muss. Groß/Kleinschreibung ist zu beachten</li>
	<li><strong>AdditionalInformation:</strong> beliebige weitere Information, die die zip-Datei beschreibt</li>
</ul>

<p>HINWEIS: der AD_Client.Value (Mandantensatznummer) darf keinen Unterstrich enthalten, damit dieser Prozess funktioniert.<br />
Außerdem gibt es eine Besonderheit, wenn als Mandantensatznummer ALL-CLIENTS angegeben wird, dann wird das Pack In auf alle aktiven Mandanten außer SYSTEM angewandt.<br />
Wenn es erforderlich ist, das Pack In zunächst auf einen Saat-Mandanten anzuwenden, dann muss die Mandantensatznummer die Form ALL-CLIENTS-Saat-Mandant haben.<br />
Beispiel:<br />
201803151607_ALL-CLIENTS-GardenWorld_Test123.zip</p>
',Updated=TO_TIMESTAMP('2024-04-07 21:30:45','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Process_ID=200099 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:45 PM UTC
UPDATE AD_Process_Trl SET Name='Lagerreservierung neu erzeugen',Description=NULL,Help='
  Der Prozess überprüft, ob es Fehler in den Lagerreservierungen gibt (storageqtyReserved <> orderqtyreserved), wenn ja, werden alle Reservierungen für die betroffenen Artikel neu erzeugt.',Updated=TO_TIMESTAMP('2024-04-07 21:30:45','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Process_ID=200107 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:45 PM UTC
UPDATE AD_Process_Trl SET Name='Speicherdienst migrieren',Description='Migriert den Speicherdienst für Anhänge, Archive und / oder Bilder',Help='<p><span style="color:#ff0000"><b>WARNUNG: Dieser Prozess kann zerstörerisch sein, deshalb müssen Sie sicherstellen, dass Sie eine Datensicherung der Datenbank und des bisherigen Speicherdienstes haben.</b></span></p>

<p>Der Prozess migriert die Dateien zwischen Speicherdiensten.</p>

<ul><li><b>Mandant:</b> Optional können Sie einen Mandanten auswählen, dessen Daten migriert werden sollen. Falls leer, wird versucht, die Daten aller Mandanten des unten ausgewählten aktuellen Speicherdienstes zu migrieren.</li><li><b>Aktueller Speicherdienst:</b> Definieren Sie hier den Speicherdienst, der migriert werden soll. Wenn hier leer gelassen, werden alle Mandanten migriert, bei denen kein Speicherdienst gesetzt ist.</li><li><b>Speicherdienst:</b> Der neue Speicherdienst zu dem migriert werden soll.</li><li><b>Anhänge migrieren:</b> Wenn aktiviert, Anhänge werden zu dem neuen Speicherdienst migriert.</li><li><b>Archiv migrieren:</b> Wenn aktiviert, werden die Archivdateien zum neuen Speicherdienst migriert.</li><li><b>Bilder migrieren:</b> Wenn aktiviert, werden Bilddateien zum neuen Speicherdienst migriert.</li><li><b>Alte / existierende Dateien löschen:</b> Wenn aktiviere, versucht das Programm nach der Migration Platz frei zu räumen, indem die Dateien beim alten Speicherdienst gelöscht werden.  <span style="color:#ff0000">Die Migration von oder zu einer Datenbank als Speicherdienst eine zerstörerische Aktion ist, die nicht rückgängig gemacht werden kann, es impliziert das Löschen der alter oder existierenden Dateien</span>.</li></ul>

<p>Bitte bedenken Sie auch, dass während der Migration alle Datensätze in der zu migrierenden Tabelle gesperrt werden. Deshalb wird empfohlen den Prozess einen einem <b>Wartungsfenster</b> ohne angemeldete Benutzer laufen zu lassen.</p>

<p>Im Falle eines Fehlers bleiben die erfolgreich migrierten Datensätze migriert, wo es nur teilweise gelang jedoch nicht (dies würde zu Datensalat führen, wenn es erlaubt würde).</p>',Updated=TO_TIMESTAMP('2024-04-07 21:30:45','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Process_ID=200117 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:45 PM UTC
UPDATE AD_Process_Trl SET Name='Fenster, Register und Felder aus Tabelle erzeugen',Description='Fenster, Register und Felder aus Tabelle erzeugen',Help='Dieser Prozess nimmt die Tabellendefinition und erzeugt das Fenster / Register und Felder mit diesen Optionen:<br>

Neues Fenster: wenn angewählt, wird der Prozess ein neues Fenster anlegen, anderenfalls legt er ein neues Register im ausgewählten Fenster an.<br>
Menü erzeugen: wenn angewählt, wird der Prozess einen Menü-Eintrag für das neue Fenster erstellen.',Updated=TO_TIMESTAMP('2024-04-07 21:30:45','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Process_ID=200118 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:46 PM UTC
UPDATE AD_Tab_Trl SET Name='Knoten',CommitWarning=NULL,Description='Definieren Sie Workflow-Knoten',Help='The Node Tab defines each Node, Activity or step in this Workflow.<br>
The action (actibity) type determines the execution: "Route" may be used in routing control conditions.  "None" identifies manual execution.',Updated=TO_TIMESTAMP('2024-04-07 21:30:46','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Tab_ID=122 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:46 PM UTC
UPDATE AD_Tab_Trl SET Name='Info Organisation',CommitWarning='Um die meisten Änderungen hier wirksam zu machen ist es erforderlich den Applikationsserver neu zu starten und sich neu anzumelden.
',Description='Detailinformationen zur Organisation',Help='Im Register "Info Organisation" können Sie Adresse, DUNS-Nummer und Steuernummer einer Organisation eingeben',Updated=TO_TIMESTAMP('2024-04-07 21:30:46','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Tab_ID=170 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:46 PM UTC
UPDATE AD_Tab_Trl SET Name='Steuer',CommitWarning=NULL,Description='Steuerdefinition',Help='The Tax Rate Window defines the different taxes used for each tax category.  For example Sales Tax must be defined for each State in which it applies.<br>
If you have multiple taxes create a summary level tax with the approximate total tax rate and the actual tax rates pointing to the summary level tax as their parent. When entering the order or invoice lines the tax is estimated the correct tax is calculated when the document is processed.  The tax is always calculated from the line net amount. If one tax has a the tax basis the line net amount and another tax you need to adjust the percentage to result in the correct amount.<br>
Valid From/To is determined by the parent tax.',Updated=TO_TIMESTAMP('2024-04-07 21:30:46','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Tab_ID=174 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:46 PM UTC
UPDATE AD_Tab_Trl SET Name='Format Feld',CommitWarning=NULL,Description='Verwaltung Formatfelder',Help='Define the individual field based on the table definition.  Please note that you have to make sure that a Constant has the correct  SQL data type (i.e. if it is a ''string'', you need to enclose it like ''this'').
<p>Product mapping (for details see documentation):
<pre>
H_Item => Value
H_ItemDesc => Name / Description
H_ItemDefn => Help
H_ItemType => ProductCategory
H_PartnrID => Value of Business Partner
H_Commodity1 => Vendor Product No
H_Commodity2 => SKU
H_ItemClass => Classification (A,B,C..)
V_OperAmt_T_Cur => Currency
V_OperAmt_T => Price 
</pre>',Updated=TO_TIMESTAMP('2024-04-07 21:30:46','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Tab_ID=316 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:46 PM UTC
UPDATE AD_Tab_Trl SET Name='Position Kontoauszug',CommitWarning=NULL,Description='Position Kontoauszug',Help='The Statement Line Tab defines the individual line items on the Bank Statement.  They can be entered manually or generated from payments entered.
<br>For Posting, the bank account organization is used, if it is not a charge.',Updated=TO_TIMESTAMP('2024-04-07 21:30:46','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Tab_ID=329 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:46 PM UTC
UPDATE AD_Tab_Trl SET Name='Zahlung',CommitWarning=NULL,Description='Zahlung oder Zahlungseingang',Help='Enter payment or receipt for a Business Partner.  If it is for a single invoice it can be allocated directly to that invoice using this screen. You can also apply over/under payments:<br>
You have an over-payment, if you received more money than due for a single invoice. Instead of writing the difference off (i.e. would be a gain), you can leave the amount unallocated and use it for later invoices or credit memos. Please note that the Amount is the payment amount, so you need to enter the over-payment as a negative amount.<br>
You can also receive a partial payment (under-payment). If you decide not to write off the remaining invoice amount, enter the under-payment as a positive amount.<br>
Note that printed payments are archived in Payment Selection (Prepared Payment).
<br>For Posting, the bank account organization is used, if it is not a charge.',Updated=TO_TIMESTAMP('2024-04-07 21:30:46','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Tab_ID=330 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:46 PM UTC
UPDATE AD_Tab_Trl SET Name='Zugriff Organisation',CommitWarning=NULL,Description='Verwaltung der Berechtigung für Rollenzugriff auf Organisationen',Help='Hier die Mandanten und Organisationen hinzufügen auf die der Benutzer Zugriff hat. Einträge hier werden ignoriert, falls in der Rolle des Benutzers der Zugriff auf Organisationen aktiviert ist oder falls die Rolle Zugriff auf alle Rollen hat.<br>
Bitte beachten, dass Zugriffsinformationen gecached werden. Daher muss entweder der Cache geleert oder eine Neuanmeldung durchgeführt werden.',Updated=TO_TIMESTAMP('2024-04-07 21:30:46','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Tab_ID=351 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:46 PM UTC
UPDATE AD_Tab_Trl SET Name='Position Preislistenschema',CommitWarning=NULL,Description='Positionen der Preisliste Handelsrabatt',Help='Pricelists are created based on Product Purchase and Category Discounts.
The parameters listed here allow to copy and calculate pricelists.<BR>
The calculation:
<UL>
<LI>Copy and convert price from referenced price list
<LI>result plus Surcharge Amount
<LI>result minus Discount
<LI>if resulting price is less than the original limit price plus min Margin, use this price (only if Margin is not zero)
<LI>if resulting price is more than the original limit price plus max Margin, use this price (only if Margin us not zero)
<LI>Round resulting price
</UL>
<B>The Formula</B> is<BR>
NewPrice = (Convert(BasePrice) + Surcharge) * (100-Discount) / 100;<BR>
if MinMargin <> 0 then NewPrice = Max (NewPrice, Convert(OrigLimitPrice) + MinMargin);<BR>
if MaxMargin <> 0 then NewPrice = Min (NewPrice, Convert(OrigLimitPrice) + MaxMargin);<BR>
 <BR>
<B>Example:</B> (assuming same currency)<BR>
Original Prices:  List=300, Standard=250, Limit=200;<BR>
New List Price: Base=List, Surcharge=0, Discount=0, Round',Updated=TO_TIMESTAMP('2024-04-07 21:30:46','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Tab_ID=405 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:46 PM UTC
UPDATE AD_Tab_Trl SET Name='Aufwandsbericht',CommitWarning=NULL,Description='Spesenabrechnung',Help='Enter the time and expenses for the Employee or Contractor (Business Partner). <br>
The price list determines the default costs of the expenses, products or resource to be reimbursed. In that sense, it is a "Purchase Price" list. The Warehouse is used to correct the inventory of items invoiced to customers (i.e. if not invoiced, the inventory is not adjusted).<br>
Please note that the Business Partner <b>must</b> be an Employee with an Address and Contact!',Updated=TO_TIMESTAMP('2024-04-07 21:30:46','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Tab_ID=412 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:46 PM UTC
UPDATE AD_Tab_Trl SET Name='Formatelement',CommitWarning=NULL,Description='Druckformatelement',Help='Item in the print format maintaining layout information.  The following additional variables are available when printing:
<p>@*Page@ - the current page number
<br>@*PageCount@ - the total number of pages
<br>@*MultiPageInfo@ - "Page x of y" - only printed if more than one page
<br>@*CopyInfo@ - if it is a copy of the document "Duplicate" is printed
<br>@*ReportName@ - name of the report
<br>@*Header@ - Full Header with user/client/org name and connection
<br>@*CurrentDate@ - the print date
<br>@*CurrentDateTime@ - the print time

<p>The layoit logic for forms is: <br>
- if not printed: ignore <br>
- set New Line Position <br>
- new page <br>
- new line, if something was printed since last new line<br>
- format item<br>
- print it (if not null/empty selected)<br>
(i.e. supress null does not prevent new line)',Updated=TO_TIMESTAMP('2024-04-07 21:30:46','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Tab_ID=426 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:46 PM UTC
UPDATE AD_Tab_Trl SET Name='Druck Papier',CommitWarning=NULL,Description='Verwaltung Papierformat',Help='Printer Paper Size, Orientation and Margins. 
The Validation Code contains the Media Size name. The names of the media sizes correspond to those in the IPP 1.1 RFC 2911 - http://www.ietf.org/rfc/rfc2911.txt  <br>
If the name is not found, the SizeX/Y with the dimension is used. Size and dimension are ignored, if a valid media size name is used.',Updated=TO_TIMESTAMP('2024-04-07 21:30:46','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Tab_ID=427 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:46 PM UTC
UPDATE AD_Tab_Trl SET Name='Druck Tabellenformat',CommitWarning=NULL,Description='Legen Sie das Tabellenformat für Berichte fest',Help='The Print Table Format lets you define how table header, etc. is printed. If you leave the entries empty, the default colors and fonts are used:<br>
Fonts are based on the Font used in the Report; Page Header and Table Header will be bold, the Function Font is Bold-Italic, the Footer Font is two points smaller, the Parameter Font is Italic.',Updated=TO_TIMESTAMP('2024-04-07 21:30:46','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Tab_ID=435 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:46 PM UTC
UPDATE AD_Tab_Trl SET Name='Import Artikel',CommitWarning=NULL,Description='Import Artikel',Help='Before importing, Adempiere checks the Unit of Measure (default if not set), the Product Category (default if not set), the Business Partner, the Currency (defaults to accounting currency if not set), the Product Type (only Items and Services), the uniqueness of UPC, Key and uniqueness and existence of the Vendor Product No.<br>
Adempiere tries to map to existing products, if the UPC, the Key and the Vendor Product No matches (in this sequence). If the imported record could be matched, product field values will only be overwritten, if the corresponding  Import field is explicitly defined.  Example: the Product Category will only be overwritten if explicitly set in the Import.',Updated=TO_TIMESTAMP('2024-04-07 21:30:46','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Tab_ID=442 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:46 PM UTC
UPDATE AD_Tab_Trl SET Name='Bestand',CommitWarning=NULL,Description='Import des Warenbestands',Help='Validieren und Importieren von Warenbestandsvorgängen. Der Lagerort wird primär vom Lagerortschlüssel bestimmt, dann vom Lager und den X,Y,Z-Feldern.<p>
Ein physikalischer Bestand wird pro Lager und Bewegungsdatum erzeugt.',Updated=TO_TIMESTAMP('2024-04-07 21:30:46','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Tab_ID=481 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:46 PM UTC
UPDATE AD_Tab_Trl SET Name='Tabellenzugriff',CommitWarning=NULL,Description='Verwaltung Tabellenzugriff',Help='If listed here, the Role can(not) access all data of this table, even if the role has access to the functionality.
<br>If you Include Access to a table and select Read Only, you can only read data (otherwise full access).
<br>If you Exclude Access to a table and select Read Only, you can only read data (otherwise no access).
<br>Please note that table access rules here are in addition to the Data Access Levels defined for a Table and the User Level defined for a Role. These rules are evaulated first and you only need to define the exceptions to these rules here.
<p>
Note that access information is cached and requires re-login or reset of cache. Be aware that if you use Include rules, that you need to include also several supporting entiries. As an alternative, grant access only to functionality required.',Updated=TO_TIMESTAMP('2024-04-07 21:30:46','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Tab_ID=482 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:46 PM UTC
UPDATE AD_Tab_Trl SET Name='Berechtigung Eintragszugriff',CommitWarning=NULL,Description='Verwaltung Eintragszugriff.',Help='You create Record Access records by enabling "Personal Lock" for the administrative role and Ctl-Lock (holding the Ctrl key while clicking on the Lock button).
<p>
If listed here, the Role can(not) access the data records of this table, even if the role has access to the functionality.
<br>If you Include Access to a record and select Read Only, you can only read data (otherwise full access).
<br>If you Exclude Access to a recorf and select Read Only, you can only read data (otherwise no access).
Note that access information is cached and requires re-login or reset of cache.',Updated=TO_TIMESTAMP('2024-04-07 21:30:46','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Tab_ID=483 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:46 PM UTC
UPDATE AD_Tab_Trl SET Name='Berechtigung Spaltenzugriff',CommitWarning=NULL,Description='Verwaltung Spaltenzugriff',Help='If listed here, the Role can(not) access the column of this table, even if the role has access to the functionality.
<br>If you Include Access to a column and select Read Only, you can only read data (otherwise full access).
<br>If you Exclude Access to a column and select Read Only, you can only read data (otherwise no access).
Note that access information is cached and requires re-login or reset of cache.',Updated=TO_TIMESTAMP('2024-04-07 21:30:46','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Tab_ID=484 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:46 PM UTC
UPDATE AD_Tab_Trl SET Name='Hauptbuch',CommitWarning=NULL,Description='Import - Hauptbuch',Help='A new Journal Batch is created, if the Batch Document No or accounting schema are different. A new Journal is created, if the Document No, Currency, Document Type, GL Category, Posting Type or Accounting type is different. You can also force the creation of a new Batch or Jornal by selecting the creat new flag.<p>
Please note that there are three Organization Fields: The Document Organization is the owner of the document and set directly or per parameter default. The Organization is part of the accounting key and only required id no Valid Account Comination is specified; If not defined it is derived from the Document Organization. The Transaction Organization is part of the account combination.<br>
The optional balance check applies to the entire import, not for individual batches or journals.
<br>The document numbers will be overwritten if the document type is not set to manual sequences.',Updated=TO_TIMESTAMP('2024-04-07 21:30:46','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Tab_ID=508 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:46 PM UTC
UPDATE AD_Tab_Trl SET Name='Zugriff Organisation',CommitWarning=NULL,Description='Verwaltung der Zugriffsberechtigung auf Organisationen',Help='Hier die Mandanten und Organisationen hinzufügen auf die der Benutzer Zugriff hat. Einträge hier werden ignoriert, falls in der Rolle des Benutzers der Zugriff auf Mandanten/Organisationen nicht aktiviert ist oder falls die Rolle Zugriff auf alle Rollen hat.<br>
Bitte beachten, dass Zugriffsinformationen zwischengespeichert werden. Daher muss entweder der Cache geleert oder eine Neuanmeldung durchgeführt werden.',Updated=TO_TIMESTAMP('2024-04-07 21:30:46','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Tab_ID=696 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:46 PM UTC
UPDATE AD_Tab_Trl SET Name='Einstandskosten',CommitWarning=NULL,Description='Die "Einstandskosten" müssen Wareneingängen zugeordnet werden.',Help='Einstandskosten ermöglichen die Zuordnung von Kosten zu erhaltenen Wareneingängen. Beispiele sind Frachtkosten, Versicherungen, Verbrauchssteuer, usw.<br>
Um die Kosten zuzuordnen muss dazu entweder ein Wareneingang, eine Wareneingangsposition oder ein bestimmter Artikel ausgewählt werden.',Updated=TO_TIMESTAMP('2024-04-07 21:30:46','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Tab_ID=697 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:46 PM UTC
UPDATE AD_Tab_Trl SET Name='Kostenelement',CommitWarning=NULL,Description='Verwaltung Artikelkostenelemente',Help='You can maintain multiple Material Costs. Which of the Material Cost Types is used for accounting is determined by the costing method.<br>
Define a Costing Method (for Material Elements) only if you want the cost calculated for that costing method. For accounting, the costing method defined in the Accounting Schema or Product Category Acct is used.',Updated=TO_TIMESTAMP('2024-04-07 21:30:46','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Tab_ID=699 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:46 PM UTC
UPDATE AD_Tab_Trl SET Name='Aktualisierungsempfänger',CommitWarning=NULL,Description='Empfänger für Aktualisierungsanfragen anzeigen',Help='List of Recipients of Request Updates (with reason).<br>
Direct: Sales Rep, User and direct subscribers
Indirect: Users with Role, Subscribers of updates for Request Category, Type, Group)',Updated=TO_TIMESTAMP('2024-04-07 21:30:46','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Tab_ID=720 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:46 PM UTC
UPDATE AD_Tab_Trl SET Name='Zuordnung',CommitWarning=NULL,Description='Zahlungen zu Rechnungen zuordnen',Help='You can directly allocate payments to invoices with the same currency when creating the Payment. 
Note that you can over- or under-allocate the payment.<b>
When processing the payment, the allocation is created.<b>
The Organization is set to the invoice organization',Updated=TO_TIMESTAMP('2024-04-07 21:30:46','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Tab_ID=755 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:46 PM UTC
UPDATE AD_Tab_Trl SET Name='Gemeinsame Verwendung',CommitWarning=NULL,Description='Erzwingen Sie die (nicht) gemeinsame Verwendung von Mandanten-/Organisationsstammdaten.',Help='Business Partner can be either defined on Client level (shared) or on Org level (not shared).  You can define here of Products are always shared (i.e. always created under Organization "*") or if they are not shared (i.e. you cannot enter them with Organization "*").<br>
The creation of  "Client and Org" shared records is the default and is ignored.',Updated=TO_TIMESTAMP('2024-04-07 21:30:46','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Tab_ID=776 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:46 PM UTC
UPDATE AD_Tab_Trl SET Name='Untergeordnete Steuern',CommitWarning=NULL,Description='Steuerdefinition',Help='The Tax Rate Window defines the different taxes used for each tax category.  For example Sales Tax must be defined for each State in which it applies.<br>
If you have multiple taxes create a summary level tax with the approximate total tax rate and the actual tax rates pointing to the summary level tax as their parent. When entering the order or invoice lines the tax is estimated the correct tax is calculated when the document is processed.  The tax is always calculated from the line net amount. If one tax has a the tax basis the line net amount and another tax you need to adjust the percentage to result in the correct amount.<br>
Valid From/To is determined by the parent tax.',Updated=TO_TIMESTAMP('2024-04-07 21:30:46','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Tab_ID=53078 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:46 PM UTC
UPDATE AD_Tab_Trl SET Name='Übergeordnete Steuer',CommitWarning=NULL,Description='Steuerdefinition',Help='The Tax Rate Window defines the different taxes used for each tax category.  For example Sales Tax must be defined for each State in which it applies.<br>
If you have multiple taxes create a summary level tax with the approximate total tax rate and the actual tax rates pointing to the summary level tax as their parent. When entering the order or invoice lines the tax is estimated the correct tax is calculated when the document is processed.  The tax is always calculated from the line net amount. If one tax has a the tax basis the line net amount and another tax you need to adjust the percentage to result in the correct amount.<br>
Valid From/To is determined by the parent tax.',Updated=TO_TIMESTAMP('2024-04-07 21:30:46','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Tab_ID=53079 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:47 PM UTC
UPDATE AD_WF_Node_Trl SET Name='Buchführungsschema',Description='Verwaltung der Buchführungsschemata - Damit Änderungen wirksam werden, melden Sie sich bitte erneut an.',Help='The Accounting Schema Window defines an accounting method and the elements that will comprise an account structure. Create and activate elements for detailed accounting for Business Partners, Products, Locations, etc.
Review and change the GL and Default accounts. The actual accounts used in transactions depend on the executing organization; Most of the information is derived from the context.',Updated=TO_TIMESTAMP('2024-04-07 21:30:47','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_WF_Node_ID=170 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:47 PM UTC
UPDATE AD_Window_Trl SET Name='Mandant',Description='Verwaltung Mandanten',Help='Der Mandant ist die höchste Ebene einer unabhängigen Geschäftseinheit. Jeder Mandant hat eine oder mehrere Organisationen die an ihn berichten. Jeder Mandant bestimmt die Buchführungsparameter (Buchführungungsschema, Hierarchie-Definition, Maßeinheiten).
Zur Erstellung von Mandanten muss der Prozess "Ersteinrichtung Mandant" mit der Systemadministrator-Rolle durchlaufen werden.
Ein neuer Mandant sollte nicht in diesem Fenster erstellt werden. Die erforderlichen Sicherheits- und Zugriffsregeln werden nur im Rahmen des Prozesses "Ersteinrichtung Mandant" erzeugt. Hier in diesem Fenster angelegte Mandanten können nicht verwendet werden, weil die erforderlichen Strukturen fehlen.',Updated=TO_TIMESTAMP('2024-04-07 21:30:47','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Window_ID=109 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:47 PM UTC
UPDATE AD_Window_Trl SET Name='Rolle',Description='Verwaltung Benutzerverantwortlichkeiten',Help='Das Rollen Fenster erlaubt es verschiedene Rollen für die Benutzer anzulegen. Rollen steuern den Zugriff auf Fenster, Aufgaben, Berichte usw. Pro Mandant wird je eine Rolle für Administratoren und Benutzer vordefiniert. Für spezifische Funktionalitäten oder Anforderungen können weitere Rollen angelegt werden.
Zugriffsinformationen werden zwischengespeichert. Nach Änderungen ist eine Neuanmeldung und/oder ein Leeren des Cache erforderlich.',Updated=TO_TIMESTAMP('2024-04-07 21:30:47','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Window_ID=111 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:47 PM UTC
UPDATE AD_Window_Trl SET Name='Preisliste',Description='Verwaltung Artikelpreislisten',Help='Das Preislisten Fenster ermöglicht die Erzeugung von Preislisten für Geschäftspartner. Preislisten bestimmen die Währung und die Handhabung von Steuern. Preislisten Versionen erlauben die parallele Verwaltung von verschiedenen Zeitspannen. Die aktuellste Preislistenversion wird basierend auf dem Belegdatum verwendet.

Alle Preislisten haben drei Preise: Liste, Standard und Limit.

Im ersten Schritt wird eine Basispreisliste erstellt. Artikel und Preise können manuell oder automatisch hinzugefügt werden. Die Basispreisliste enthält häufig die "unverbindlichen Preisempfehlungen". Der Standardpreis ist der individuelle Verkaufspreis (oder Ihr Einkaufspreis beim Lieferanten). Der Limit Preis kann dazu verwendet werden den finalen Einkaufskosten nach Rabatten zu prüfen.
Preislisten können berechnet und kopiert werden. Um die Berechnung zu beschleunigen werden die Parameter gespeichert und verwendet wenn eine neue Preisliste erstellt wird.',Updated=TO_TIMESTAMP('2024-04-07 21:30:47','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Window_ID=146 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:47 PM UTC
UPDATE AD_Window_Trl SET Name='E-Mail-Vorlage',Description='Verwalten von E-Mail-Vorlagen',Help='Mail templates can contain variables of the user, business partner or a general object.  The priority of parsing is User/Contact, Business Partner and then the underlying business object (like Request, Dunning, Workflow object).<br>
So, @Name@ would resolve into the User name (if user is defined defined), then Business Partner name (if business partner is defined) and then the Name of the business object if it has a Name.<br>
For Multi-Lingual systems, the template is translated based on the Business Partner''s language selection.',Updated=TO_TIMESTAMP('2024-04-07 21:30:47','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Window_ID=204 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:47 PM UTC
UPDATE AD_Window_Trl SET Name='Druckformulare für Belege',Description='Verwaltung verwendeter Druckformulare (z.B. Rechnungen, Schecks, ...)',Help='Define the documents you use for this Client/Organnization.  Note that the check format is defined in the Bank (Account) Window.<p>
The highest priotity has the Print Format, you define on a Document Type (example specific Export Invoice format). The next level is the set of Print Formats, you defined for the organziation of the document printed. The default is the set of Print Formats defines for all organizations of the Client (Organization=*).',Updated=TO_TIMESTAMP('2024-04-07 21:30:47','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Window_ID=224 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:47 PM UTC
UPDATE AD_Window_Trl SET Name='Klicks',Description='Verwaltung Webklicks',Help='Web Clicks allow you to track number of clicks.  Example:
&lt;a href="http://www.adempiere.com/wstore/click?http://www.adempiere.de" target="_blank"&gt;
where "http://www.adempiere.com/wstore/click" is your side and "http://www.adempiere.de" is the target page.
If you created a web click for http://www.adempiere.de, you will be able to see details and total of web clicks.',Updated=TO_TIMESTAMP('2024-04-07 21:30:47','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Window_ID=273 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:47 PM UTC
UPDATE AD_Window_Trl SET Name='Replikation',Description='Verwaltung von Zielen für die Datenreplikation',Help='Data Replication Target Details. Set up your system completely on the central system, before setting up the replication. Define the Replication target here and export the database and import it on the remote system.<p>
Before(!) entering transactions, Start the Replication Run to set up the remote system.',Updated=TO_TIMESTAMP('2024-04-07 21:30:47','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Window_ID=284 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:47 PM UTC
UPDATE AD_Window_Trl SET Name='MBP Meldung',Description='Ansicht MBP Statusmeldungen',Help='The system creates messages while performing processes. In this window you can view them.

MRP Notice
It is a group of messages generated for the MRP process. It indicates to the scheduler the actions he needs to do to reach the Master Production Schedule. The action messages are set as notices for the planner when he sign up the Compiere session.

The possible action messages are:

MRP Code	 Action Message
MRP - 001	 Beginning Quantity Less Than Zero.
MRP - 020	 Create - A Supply Order should be created to satisfy a negative projected on hand balance.
This message is only generate if Create Plan is No or if a new requirement appears the time fence.

MRP - 030	 De Expedite - Indicates that a scheduled supply order is due before it is needed
and should be delayed, or demand rescheduled to an earlier date.

MRP - 040	 Expedite - Indicates that a scheduled supply order is due after is needed
and should be rescheduled to an earlier date, or demand rescheduled to a later date.

MRP - 050	 Cancel - Indicate that a scheduled supply order is no longer needed and should be deleted.
MRP - 060	 Release Due For - Indicate that a schedule order should be released.
MRP - 070	 Release Past Due For - Indicate that a supply order was not released when it was due,
and should be either released or expedited now, or the demand rescheduled for a later date.

MRP - 080	 Quantity Less than Minimum - Indicates that a supply order was created for
a quantity less than the minimum quantity set in the product planning

MRP - 090	 Quantity Less than Maximum - Indicates that a supply order was created for a quantity
for a quantity greater than than maximum quantity set in the product planning

MRP - 100	 Past Due Time Fence - Indicates that there is an unsatisfied material requirement inside
the planning time fence for this item. You should either manually schedule and expedite orders to

fill this demand or delay fulfillment of the requirement that created the demand.

MRP - 110	 No exists Dem',Updated=TO_TIMESTAMP('2024-04-07 21:30:47','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Window_ID=53008 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:47 PM UTC
UPDATE AD_Workflow_Trl SET Name='Überprüfung Ersteinrichtung Mandant',Description='Überprüfung der Ersteinrichtung eines neuen Mandanten auf Systemebene',Help='Dieser Workflow überprüft die Einrichtung eines neuen Mandanten, nachdem er mit "Ersteinrichtung Mandant" erstellt wurde.
Sie sollten außerdem die folgenden Workflow überprüfen:
- Einrichtung Buchführung
- Einrichtung Geschäftspartner
- Einrichtung Artikel
- Einrichtung Preisliste
- Einrichtung Steuern',Updated=TO_TIMESTAMP('2024-04-07 21:30:47','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Workflow_ID=104 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:47 PM UTC
UPDATE AD_Workflow_Trl SET Name='Einrichtung Leistungsmessung',Description='Einrichtung Leistungsmessung',Help='
Dieser Workflow führt Sie durch die Einrichtung Ihres Kennzahlensystems auf der Basis von Leistungskennzahlen, Balanced Scorecard, etc.

Ganz wichtig: Analysieren Sie zuerst
- Was sind Ihre Ziele und wie können Sie sie messen?

Wenn Sie ihr System einrichten, gehen Sie rückwärts vor:
Erst legen Sie fest, wie Sie messen wollen und dann legen Sie die Ziele der Messungen fest.
Sie haben drei Möglichkeiten die Leistung zu messen:
- über quantitative Messungen (z.B. Umsatz über drei Millionen Euro im ersten Quartal)
- über manuelle Messungen
- über das Erledigen von Aufgaben

Das System rechnet die Messungen in Prozentwerte um (basierend auf dem Ziel und dem erreichten Ergebnis - oder der Gesamtzahl und der Zahl der erledigten Aufgaben)',Updated=TO_TIMESTAMP('2024-04-07 21:30:47','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Workflow_ID=112 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:47 PM UTC
UPDATE AD_Workflow_Trl SET Name='Einrichtung Replikation',Description='Einrichtung Datenreplikation',Help='
Datenreplikation ermöglicht die Synchronisation der Daten von entfernt liegenden Einheiten mit dem zentralen Büro. Alle Aktionen werden vom zentralen Büro aus eingeleitet.<p>
<b>Das zentrale System:</b><br>
- richten Sie das System mit allen Organisationen, Rollen etc. ein.<br>
- lassen Sie die Migration laufen, um sicherzustellen, dass es auf dem aktuellen Stand ist<br>
- exportieren Sie das zentrale System<br>
<p>
<b>das entfernte System:</b>
- installieren Sie exakt die Version des zentralen Systems<br>
- importieren Sie die Daten des zentralen Systems in der entfernten System<br>
<p>
<b>Im zentralen System:</b>
- Replikationsstrategie<br>
- Exportformat festlegen<br>
- Exportprozessor konfigurieren<br>
- JMS-Server starten<br>
<p>
** Geben Sie Transaktionen ein **
<p>
<b>auf dem entfernte System:</b><br>
- konfigurieren Sie den Importprozessor<br>',Updated=TO_TIMESTAMP('2024-04-07 21:30:47','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE AD_Workflow_ID=50012 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:47 PM UTC
UPDATE R_MailText_Trl SET MailText='Liebe/r @Name@,

Vielen Dank für Ihren Auftrag.

Mit freundlichen Grüßen,
Das GardenWorld Team',Name='Auftragsbestätigung',MailHeader='Auftragsbestätigung',MailText2=NULL,MailText3=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:47','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE R_MailText_ID=100 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:47 PM UTC
UPDATE R_MailText_Trl SET MailText='Liebe/r @Name@,

Sie erhalten diese E-Mail weil Sie (oder jemand der vorgibt Sie zu sein) uns mitgeteilt hat, dass Sie Ihre iDempiere Passwort verloren haben.
Um auf iDempiere zuzugreifen benutzen Sie bitte dieses temporäre Passwort von @AD_Client_ID<Name>@:
@Password@

Nach dem Login werden Sie gebeten das Passwort zu ändern. Bitte wählen Sie ein Passwort an das Sie sich erinnern können.

Mit freundlichen Grüssen,
Das iDempiere Team

Hinweis: Diese E-Mail-Adresse kann keine Antworten verarbeiten.',Name='Passwort zurücksetzen',MailHeader='iDempiere Passwort zurücksetzen',MailText2=NULL,MailText3=NULL,Updated=TO_TIMESTAMP('2024-04-07 21:30:47','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE R_MailText_ID=200000 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:30:47 PM UTC
UPDATE W_Store_Trl SET EMailFooter=NULL,EMailHeader=NULL,WebInfo=NULL,WebParam1='ADempiere120x60.gif',WebParam2='
Webshop',WebParam3='Parameter 3',WebParam4='Parameter 4',WebParam5='Parameter 5',WebParam6='Parameter 6',Updated=TO_TIMESTAMP('2024-04-07 21:30:47','YYYY-MM-DD HH24:MI:SS'),IsTranslated='Y' WHERE W_Store_ID=11 AND AD_Language='de_DE' AND AD_Client_ID=0
;

-- Apr 7, 2024, 9:31:02 PM UTC
UPDATE AD_COLUMN SET AD_Element_id = (SELECT AD_Element_ID FROM AD_ELEMENT e WHERE UPPER(AD_COLUMN.ColumnName)=UPPER(e.ColumnName)) WHERE AD_Element_ID IS NULL
;

-- Apr 7, 2024, 9:31:02 PM UTC
UPDATE AD_COLUMN SET ColumnName=e.ColumnName,Name=e.Name,Description=e.Description,Help=e.Help,Placeholder=e.Placeholder, Updated = statement_timestamp() FROM AD_ELEMENT e WHERE AD_COLUMN.AD_Element_ID=e.AD_Element_ID AND EXISTS (SELECT 1 FROM AD_ELEMENT e WHERE AD_COLUMN.AD_Element_ID=e.AD_Element_ID AND (AD_COLUMN.ColumnName <> e.ColumnName OR AD_COLUMN.Name <> e.Name OR COALESCE(AD_COLUMN.Description,' ') <> COALESCE(e.Description,' ') OR COALESCE(AD_COLUMN.Help,' ') <> COALESCE(e.Help,' ') OR COALESCE(AD_COLUMN.Placeholder,' ') <> COALESCE(e.Placeholder,' ')))
;

-- Apr 7, 2024, 9:31:02 PM UTC
UPDATE AD_INFOCOLUMN SET ColumnName=e.ColumnName,Name=e.Name,Description=e.Description,Help=e.Help,Placeholder=e.Placeholder, Updated = statement_timestamp() FROM AD_ELEMENT e WHERE AD_INFOCOLUMN.AD_Element_ID=e.AD_Element_ID AND AD_INFOCOLUMN.IsCentrallyMaintained='Y' AND AD_INFOCOLUMN.IsActive='Y' AND EXISTS (SELECT 1 FROM AD_ELEMENT e WHERE AD_INFOCOLUMN.AD_Element_ID=e.AD_Element_ID AND (AD_INFOCOLUMN.ColumnName <> e.ColumnName OR AD_INFOCOLUMN.Name <> e.Name OR COALESCE(AD_INFOCOLUMN.Description,' ') <> COALESCE(e.Description,' ') OR COALESCE(AD_INFOCOLUMN.Help,' ') <> COALESCE(e.Help,' ') OR COALESCE(AD_INFOCOLUMN.Placeholder,' ') <> COALESCE(e.Placeholder,' ')))
;

-- Apr 7, 2024, 9:31:02 PM UTC
UPDATE AD_FIELD SET Name=e.Name,Description=e.Description,Help=e.Help,Placeholder=e.Placeholder, Updated = statement_timestamp() FROM AD_ELEMENT e, AD_COLUMN c WHERE e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=AD_FIELD.AD_Column_ID AND AD_FIELD.IsCentrallyMaintained='Y' AND AD_FIELD.IsActive='Y' AND EXISTS (SELECT 1 FROM AD_ELEMENT e, AD_COLUMN c WHERE AD_FIELD.AD_Column_ID=c.AD_Column_ID AND c.AD_Element_ID=e.AD_Element_ID AND c.AD_Process_ID IS NULL AND (AD_FIELD.Name <> e.Name OR COALESCE(AD_FIELD.Description,' ') <> COALESCE(e.Description,' ') OR COALESCE(AD_FIELD.Help,' ') <> COALESCE(e.Help,' ') OR COALESCE(AD_FIELD.Placeholder,' ') <> COALESCE(e.Placeholder,' ')))
;

-- Apr 7, 2024, 9:31:02 PM UTC
UPDATE AD_FIELD_TRL SET Name = (SELECT e.Name FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_FIELD f WHERE e.AD_LANGUAGE=AD_FIELD_TRL.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=f.AD_Column_ID AND f.AD_Field_ID=AD_FIELD_TRL.AD_Field_ID), Description = (SELECT e.Description FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_FIELD f WHERE e.AD_LANGUAGE=AD_FIELD_TRL.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=f.AD_Column_ID AND f.AD_Field_ID=AD_FIELD_TRL.AD_Field_ID), Help = (SELECT e.Help FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_FIELD f WHERE e.AD_LANGUAGE=AD_FIELD_TRL.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=f.AD_Column_ID AND f.AD_Field_ID=AD_FIELD_TRL.AD_Field_ID), Placeholder = (SELECT e.Placeholder FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_FIELD f WHERE e.AD_LANGUAGE=AD_FIELD_TRL.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=f.AD_Column_ID AND f.AD_Field_ID=AD_FIELD_TRL.AD_Field_ID), IsTranslated = (SELECT e.IsTranslated FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_FIELD f WHERE e.AD_LANGUAGE=AD_FIELD_TRL.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=f.AD_Column_ID AND f.AD_Field_ID=AD_FIELD_TRL.AD_Field_ID), Updated = statement_timestamp() WHERE EXISTS (SELECT 1 FROM AD_FIELD f, AD_ELEMENT_TRL e, AD_COLUMN c WHERE AD_FIELD_TRL.AD_Field_ID=f.AD_Field_ID AND f.AD_Column_ID=c.AD_Column_ID AND c.AD_Element_ID=e.AD_Element_ID AND c.AD_Process_ID IS NULL AND AD_FIELD_TRL.AD_LANGUAGE=e.AD_LANGUAGE AND f.IsCentrallyMaintained='Y' AND f.IsActive='Y' AND (AD_FIELD_TRL.Name <> e.Name OR COALESCE(AD_FIELD_TRL.Description,' ') <> COALESCE(e.Description,' ') OR COALESCE(AD_FIELD_TRL.Help,' ') <> COALESCE(e.Help,' ') OR COALESCE(AD_FIELD_TRL.Placeholder,' ') <> COALESCE(e.Placeholder,' ')))
;

-- Apr 7, 2024, 9:31:04 PM UTC
UPDATE AD_FIELD SET Name = (SELECT e.PO_Name FROM AD_ELEMENT e, AD_COLUMN c WHERE e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=AD_FIELD.AD_Column_ID), Description = (SELECT e.PO_Description FROM AD_ELEMENT e, AD_COLUMN c WHERE e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=AD_FIELD.AD_Column_ID), Help = (SELECT e.PO_Help FROM AD_ELEMENT e, AD_COLUMN c WHERE e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=AD_FIELD.AD_Column_ID), Updated = statement_timestamp() WHERE AD_FIELD.IsCentrallyMaintained='Y' AND AD_FIELD.IsActive='Y' AND EXISTS (SELECT 1 FROM AD_ELEMENT e, AD_COLUMN c WHERE AD_FIELD.AD_Column_ID=c.AD_Column_ID AND c.AD_Element_ID=e.AD_Element_ID AND c.AD_Process_ID IS NULL AND (AD_FIELD.Name <> e.PO_Name OR COALESCE(AD_FIELD.Description,' ') <> COALESCE(e.PO_Description,' ') OR COALESCE(AD_FIELD.Help,' ') <> COALESCE(e.PO_Help,' ')) AND e.PO_Name IS NOT NULL) AND EXISTS (SELECT 1 FROM AD_TAB t, AD_WINDOW w WHERE AD_FIELD.AD_Tab_ID=t.AD_Tab_ID AND t.AD_Window_ID=w.AD_Window_ID AND w.IsSOTrx='N')
;

-- Apr 7, 2024, 9:31:04 PM UTC
UPDATE AD_FIELD_TRL SET Name = (SELECT e.PO_Name FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_FIELD f WHERE e.AD_LANGUAGE=AD_FIELD_TRL.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=f.AD_Column_ID AND f.AD_Field_ID=AD_FIELD_TRL.AD_Field_ID), Description = (SELECT e.PO_Description FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_FIELD f WHERE e.AD_LANGUAGE=AD_FIELD_TRL.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=f.AD_Column_ID AND f.AD_Field_ID=AD_FIELD_TRL.AD_Field_ID), Help = (SELECT e.PO_Help FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_FIELD f WHERE e.AD_LANGUAGE=AD_FIELD_TRL.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=f.AD_Column_ID AND f.AD_Field_ID=AD_FIELD_TRL.AD_Field_ID), IsTranslated = (SELECT e.IsTranslated FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_FIELD f WHERE e.AD_LANGUAGE=AD_FIELD_TRL.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=f.AD_Column_ID AND f.AD_Field_ID=AD_FIELD_TRL.AD_Field_ID), Updated = statement_timestamp() WHERE EXISTS (SELECT 1 FROM AD_FIELD f, AD_ELEMENT_TRL e, AD_COLUMN c WHERE AD_FIELD_TRL.AD_Field_ID=f.AD_Field_ID AND f.AD_Column_ID=c.AD_Column_ID AND c.AD_Element_ID=e.AD_Element_ID AND c.AD_Process_ID IS NULL AND AD_FIELD_TRL.AD_LANGUAGE=e.AD_LANGUAGE AND f.IsCentrallyMaintained='Y' AND f.IsActive='Y' AND (AD_FIELD_TRL.Name <> e.PO_Name OR COALESCE(AD_FIELD_TRL.Description,' ') <> COALESCE(e.PO_Description,' ') OR COALESCE(AD_FIELD_TRL.Help,' ') <> COALESCE(e.PO_Help,' ')) AND e.PO_Name IS NOT NULL) AND EXISTS (SELECT 1 FROM AD_FIELD f, AD_TAB t, AD_WINDOW w WHERE AD_FIELD_TRL.AD_Field_ID=f.AD_Field_ID AND f.AD_Tab_ID=t.AD_Tab_ID AND t.AD_Window_ID=w.AD_Window_ID AND w.IsSOTrx='N')
;

-- Apr 7, 2024, 9:31:04 PM UTC
UPDATE AD_FIELD SET Name = (SELECT p.Name FROM AD_PROCESS p, AD_COLUMN c WHERE p.AD_Process_ID=c.AD_Process_ID AND c.AD_Column_ID=AD_FIELD.AD_Column_ID), Description = (SELECT p.Description FROM AD_PROCESS p, AD_COLUMN c WHERE p.AD_Process_ID=c.AD_Process_ID AND c.AD_Column_ID=AD_FIELD.AD_Column_ID), Help = (SELECT p.Help FROM AD_PROCESS p, AD_COLUMN c WHERE p.AD_Process_ID=c.AD_Process_ID AND c.AD_Column_ID=AD_FIELD.AD_Column_ID), Updated = statement_timestamp() WHERE AD_FIELD.IsCentrallyMaintained='Y' AND AD_FIELD.IsActive='Y' AND EXISTS (SELECT 1 FROM AD_PROCESS p, AD_COLUMN c WHERE c.AD_Process_ID=p.AD_Process_ID AND AD_FIELD.AD_Column_ID=c.AD_Column_ID AND (AD_FIELD.Name<>p.Name OR COALESCE(AD_FIELD.Description,' ')<>COALESCE(p.Description,' ') OR COALESCE(AD_FIELD.Help,' ')<>COALESCE(p.Help,' ')))
;

-- Apr 7, 2024, 9:31:05 PM UTC
UPDATE AD_FIELD_TRL SET Name = (SELECT p.Name FROM AD_PROCESS_TRL p, AD_COLUMN c, AD_FIELD f WHERE p.AD_Process_ID=c.AD_Process_ID AND c.AD_Column_ID=f.AD_Column_ID AND f.AD_Field_ID=AD_FIELD_TRL.AD_Field_ID AND p.AD_LANGUAGE=AD_FIELD_TRL.AD_LANGUAGE), Description = (SELECT p.Description FROM AD_PROCESS_TRL p, AD_COLUMN c, AD_FIELD f WHERE p.AD_Process_ID=c.AD_Process_ID AND c.AD_Column_ID=f.AD_Column_ID AND f.AD_Field_ID=AD_FIELD_TRL.AD_Field_ID AND p.AD_LANGUAGE=AD_FIELD_TRL.AD_LANGUAGE), Help = (SELECT p.Help FROM AD_PROCESS_TRL p, AD_COLUMN c, AD_FIELD f WHERE p.AD_Process_ID=c.AD_Process_ID AND c.AD_Column_ID=f.AD_Column_ID AND f.AD_Field_ID=AD_FIELD_TRL.AD_Field_ID AND p.AD_LANGUAGE=AD_FIELD_TRL.AD_LANGUAGE), IsTranslated = (SELECT p.IsTranslated FROM AD_PROCESS_TRL p, AD_COLUMN c, AD_FIELD f WHERE p.AD_Process_ID=c.AD_Process_ID AND c.AD_Column_ID=f.AD_Column_ID AND f.AD_Field_ID=AD_FIELD_TRL.AD_Field_ID AND p.AD_LANGUAGE=AD_FIELD_TRL.AD_LANGUAGE), Updated = statement_timestamp() WHERE EXISTS (SELECT 1 FROM AD_PROCESS_TRL p, AD_COLUMN c, AD_FIELD f WHERE c.AD_Process_ID=p.AD_Process_ID AND f.AD_Column_ID=c.AD_Column_ID AND f.AD_Field_ID=AD_FIELD_TRL.AD_Field_ID AND p.AD_LANGUAGE=AD_FIELD_TRL.AD_LANGUAGE AND f.IsCentrallyMaintained='Y' AND f.IsActive='Y' AND (AD_FIELD_TRL.Name<>p.Name OR COALESCE(AD_FIELD_TRL.Description,' ')<>COALESCE(p.Description,' ') OR COALESCE(AD_FIELD_TRL.Help,' ')<>COALESCE(p.Help,' ')))
;

-- Apr 7, 2024, 9:31:05 PM UTC
UPDATE AD_PROCESS_PARA SET ColumnName = (SELECT e.ColumnName FROM AD_ELEMENT e WHERE UPPER(e.ColumnName)=UPPER(AD_PROCESS_PARA.ColumnName)) WHERE AD_PROCESS_PARA.IsCentrallyMaintained='Y' AND AD_PROCESS_PARA.IsActive='Y' AND EXISTS (SELECT 1 FROM AD_ELEMENT e WHERE UPPER(e.ColumnName)=UPPER(AD_PROCESS_PARA.ColumnName) AND e.ColumnName<>AD_PROCESS_PARA.ColumnName)
;

-- Apr 7, 2024, 9:31:05 PM UTC
UPDATE AD_PROCESS_PARA SET IsCentrallyMaintained = 'N' WHERE IsCentrallyMaintained <> 'N' AND NOT EXISTS (SELECT 1 FROM AD_ELEMENT e WHERE AD_PROCESS_PARA.ColumnName=e.ColumnName)
;

-- Apr 7, 2024, 9:31:05 PM UTC
UPDATE AD_PROCESS_PARA SET Name = (SELECT e.Name FROM AD_ELEMENT e WHERE e.ColumnName=AD_PROCESS_PARA.ColumnName), Description = (SELECT e.Description FROM AD_ELEMENT e WHERE e.ColumnName=AD_PROCESS_PARA.ColumnName), Help = (SELECT e.Help FROM AD_ELEMENT e WHERE e.ColumnName=AD_PROCESS_PARA.ColumnName), Placeholder = (SELECT e.Placeholder FROM AD_ELEMENT e WHERE e.ColumnName=AD_PROCESS_PARA.ColumnName), Updated = statement_timestamp() WHERE AD_PROCESS_PARA.IsCentrallyMaintained='Y' AND AD_PROCESS_PARA.IsActive='Y' AND EXISTS (SELECT 1 FROM AD_ELEMENT e WHERE e.ColumnName=AD_PROCESS_PARA.ColumnName AND (AD_PROCESS_PARA.Name <> e.Name OR COALESCE(AD_PROCESS_PARA.Description,' ') <> COALESCE(e.Description,' ') OR COALESCE(AD_PROCESS_PARA.Help,' ') <> COALESCE(e.Help,' ') OR COALESCE(AD_PROCESS_PARA.Placeholder,' ') <> COALESCE(e.Placeholder,' ')))
;

-- Apr 7, 2024, 9:31:05 PM UTC
UPDATE AD_PROCESS_PARA_TRL SET Name = (SELECT et.Name FROM AD_ELEMENT_TRL et, AD_ELEMENT e, AD_PROCESS_PARA f WHERE et.AD_LANGUAGE=AD_PROCESS_PARA_TRL.AD_LANGUAGE AND et.AD_Element_ID=e.AD_Element_ID AND e.ColumnName=f.ColumnName AND f.AD_Process_Para_ID=AD_PROCESS_PARA_TRL.AD_Process_Para_ID), Description = (SELECT et.Description FROM AD_ELEMENT_TRL et, AD_ELEMENT e, AD_PROCESS_PARA f WHERE et.AD_LANGUAGE=AD_PROCESS_PARA_TRL.AD_LANGUAGE AND et.AD_Element_ID=e.AD_Element_ID AND e.ColumnName=f.ColumnName AND f.AD_Process_Para_ID=AD_PROCESS_PARA_TRL.AD_Process_Para_ID), Help = (SELECT et.Help FROM AD_ELEMENT_TRL et, AD_ELEMENT e, AD_PROCESS_PARA f WHERE et.AD_LANGUAGE=AD_PROCESS_PARA_TRL.AD_LANGUAGE AND et.AD_Element_ID=e.AD_Element_ID AND e.ColumnName=f.ColumnName AND f.AD_Process_Para_ID=AD_PROCESS_PARA_TRL.AD_Process_Para_ID), Placeholder = (SELECT et.Placeholder FROM AD_ELEMENT_TRL et, AD_ELEMENT e, AD_PROCESS_PARA f WHERE et.AD_LANGUAGE=AD_PROCESS_PARA_TRL.AD_LANGUAGE AND et.AD_Element_ID=e.AD_Element_ID AND e.ColumnName=f.ColumnName AND f.AD_Process_Para_ID=AD_PROCESS_PARA_TRL.AD_Process_Para_ID), IsTranslated = (SELECT et.IsTranslated FROM AD_ELEMENT_TRL et, AD_ELEMENT e, AD_PROCESS_PARA f WHERE et.AD_LANGUAGE=AD_PROCESS_PARA_TRL.AD_LANGUAGE AND et.AD_Element_ID=e.AD_Element_ID AND e.ColumnName=f.ColumnName AND f.AD_Process_Para_ID=AD_PROCESS_PARA_TRL.AD_Process_Para_ID), Updated = statement_timestamp() WHERE EXISTS (SELECT 1 FROM AD_ELEMENT_TRL et, AD_ELEMENT e, AD_PROCESS_PARA f WHERE et.AD_LANGUAGE=AD_PROCESS_PARA_TRL.AD_LANGUAGE AND et.AD_Element_ID=e.AD_Element_ID AND e.ColumnName=f.ColumnName AND f.AD_Process_Para_ID=AD_PROCESS_PARA_TRL.AD_Process_Para_ID AND f.IsCentrallyMaintained='Y' AND f.IsActive='Y' AND (AD_PROCESS_PARA_TRL.Name <> et.Name OR COALESCE(AD_PROCESS_PARA_TRL.Description,' ') <> COALESCE(et.Description,' ') OR COALESCE(AD_PROCESS_PARA_TRL.Help,' ') <> COALESCE(et.Help,' ') OR COALESCE(AD_PROCESS_PARA_TRL.Placeholder,' ') <> COALESCE(et.Placeholder,' ')))
;

-- Apr 7, 2024, 9:31:09 PM UTC
UPDATE AD_INFOCOLUMN_TRL SET Name = (SELECT et.Name FROM AD_ELEMENT_TRL et, AD_ELEMENT e, AD_INFOCOLUMN f WHERE et.AD_LANGUAGE=AD_INFOCOLUMN_TRL.AD_LANGUAGE AND et.AD_Element_ID=e.AD_Element_ID AND e.ColumnName=f.ColumnName AND f.AD_InfoColumn_ID=AD_INFOCOLUMN_TRL.AD_InfoColumn_ID), Description = (SELECT et.Description FROM AD_ELEMENT_TRL et, AD_ELEMENT e, AD_INFOCOLUMN f WHERE et.AD_LANGUAGE=AD_INFOCOLUMN_TRL.AD_LANGUAGE AND et.AD_Element_ID=e.AD_Element_ID AND e.ColumnName=f.ColumnName AND f.AD_InfoColumn_ID=AD_INFOCOLUMN_TRL.AD_InfoColumn_ID), Help = (SELECT et.Help FROM AD_ELEMENT_TRL et, AD_ELEMENT e, AD_INFOCOLUMN f WHERE et.AD_LANGUAGE=AD_INFOCOLUMN_TRL.AD_LANGUAGE AND et.AD_Element_ID=e.AD_Element_ID AND e.ColumnName=f.ColumnName AND f.AD_InfoColumn_ID=AD_INFOCOLUMN_TRL.AD_InfoColumn_ID), Placeholder = (SELECT et.Placeholder FROM AD_ELEMENT_TRL et, AD_ELEMENT e, AD_INFOCOLUMN f WHERE et.AD_LANGUAGE=AD_INFOCOLUMN_TRL.AD_LANGUAGE AND et.AD_Element_ID=e.AD_Element_ID AND e.ColumnName=f.ColumnName AND f.AD_InfoColumn_ID=AD_INFOCOLUMN_TRL.AD_InfoColumn_ID), IsTranslated = (SELECT et.IsTranslated FROM AD_ELEMENT_TRL et, AD_ELEMENT e, AD_INFOCOLUMN f WHERE et.AD_LANGUAGE=AD_INFOCOLUMN_TRL.AD_LANGUAGE AND et.AD_Element_ID=e.AD_Element_ID AND e.ColumnName=f.ColumnName AND f.AD_InfoColumn_ID=AD_INFOCOLUMN_TRL.AD_InfoColumn_ID), Updated = statement_timestamp() WHERE EXISTS (SELECT 1 FROM AD_ELEMENT_TRL et, AD_ELEMENT e, AD_INFOCOLUMN f WHERE et.AD_LANGUAGE=AD_INFOCOLUMN_TRL.AD_LANGUAGE AND et.AD_Element_ID=e.AD_Element_ID AND e.ColumnName=f.ColumnName AND f.AD_InfoColumn_ID=AD_INFOCOLUMN_TRL.AD_InfoColumn_ID AND f.IsCentrallyMaintained='Y' AND f.IsActive='Y' AND (AD_INFOCOLUMN_TRL.Name <> et.Name OR COALESCE(AD_INFOCOLUMN_TRL.Description,' ') <> COALESCE(et.Description,' ') OR COALESCE(AD_INFOCOLUMN_TRL.Help,' ') <> COALESCE(et.Help,' ') OR COALESCE(AD_INFOCOLUMN_TRL.Placeholder,' ') <> COALESCE(et.Placeholder,' ')))
;

-- Apr 7, 2024, 9:31:10 PM UTC
UPDATE AD_WF_NODE SET Name = (SELECT w.Name FROM AD_WINDOW w WHERE w.AD_Window_ID=AD_WF_NODE.AD_Window_ID), Description = (SELECT w.Description FROM AD_WINDOW w WHERE w.AD_Window_ID=AD_WF_NODE.AD_Window_ID), Help = (SELECT w.Help FROM AD_WINDOW w WHERE w.AD_Window_ID=AD_WF_NODE.AD_Window_ID) WHERE AD_WF_NODE.IsCentrallyMaintained = 'Y' AND EXISTS (SELECT 1 FROM AD_WINDOW w WHERE w.AD_Window_ID=AD_WF_NODE.AD_Window_ID AND (w.Name <> AD_WF_NODE.Name OR COALESCE(w.Description,' ') <> COALESCE(AD_WF_NODE.Description,' ') OR COALESCE(w.Help,' ') <> COALESCE(AD_WF_NODE.Help,' ')))
;

-- Apr 7, 2024, 9:31:10 PM UTC
UPDATE AD_WF_NODE_TRL SET Name = (SELECT t.Name FROM AD_WINDOW_TRL t, AD_WF_NODE n WHERE AD_WF_NODE_TRL.AD_WF_Node_ID=n.AD_WF_Node_ID AND n.AD_Window_ID=t.AD_Window_ID AND AD_WF_NODE_TRL.AD_LANGUAGE=t.AD_LANGUAGE), Description = (SELECT t.Description FROM AD_WINDOW_TRL t, AD_WF_NODE n WHERE AD_WF_NODE_TRL.AD_WF_Node_ID=n.AD_WF_Node_ID AND n.AD_Window_ID=t.AD_Window_ID AND AD_WF_NODE_TRL.AD_LANGUAGE=t.AD_LANGUAGE), Help = (SELECT t.Help FROM AD_WINDOW_TRL t, AD_WF_NODE n WHERE AD_WF_NODE_TRL.AD_WF_Node_ID=n.AD_WF_Node_ID AND n.AD_Window_ID=t.AD_Window_ID AND AD_WF_NODE_TRL.AD_LANGUAGE=t.AD_LANGUAGE) WHERE EXISTS (SELECT 1 FROM AD_WINDOW_TRL t, AD_WF_NODE n WHERE AD_WF_NODE_TRL.AD_WF_Node_ID=n.AD_WF_Node_ID AND n.AD_Window_ID=t.AD_Window_ID AND AD_WF_NODE_TRL.AD_LANGUAGE=t.AD_LANGUAGE AND n.IsCentrallyMaintained='Y' AND n.IsActive='Y' AND (AD_WF_NODE_TRL.Name <> t.Name OR COALESCE(AD_WF_NODE_TRL.Description,' ') <> COALESCE(t.Description,' ') OR COALESCE(AD_WF_NODE_TRL.Help,' ') <> COALESCE(t.Help,' ')))
;

-- Apr 7, 2024, 9:31:10 PM UTC
UPDATE AD_WF_NODE SET Name=f.Name,Description=f.Description,Help=f.Help FROM AD_FORM f WHERE f.AD_Form_ID=AD_WF_NODE.AD_Form_ID AND AD_WF_NODE.IsCentrallyMaintained = 'Y' AND EXISTS (SELECT 1 FROM AD_FORM f WHERE f.AD_Form_ID=AD_WF_NODE.AD_Form_ID AND (f.Name <> AD_WF_NODE.Name OR COALESCE(f.Description,' ') <> COALESCE(AD_WF_NODE.Description,' ') OR COALESCE(f.Help,' ') <> COALESCE(AD_WF_NODE.Help,' ')))
;

-- Apr 7, 2024, 9:31:10 PM UTC
UPDATE AD_WF_NODE_TRL SET Name=t.Name,Description=t.Description,Help=t.Help FROM AD_FORM_TRL t, AD_WF_NODE n WHERE AD_WF_NODE_TRL.AD_WF_Node_ID=n.AD_WF_Node_ID AND n.AD_Form_ID=t.AD_Form_ID AND AD_WF_NODE_TRL.AD_LANGUAGE=t.AD_LANGUAGE AND EXISTS (SELECT 1 FROM AD_FORM_TRL t, AD_WF_NODE n WHERE AD_WF_NODE_TRL.AD_WF_Node_ID=n.AD_WF_Node_ID AND n.AD_Form_ID=t.AD_Form_ID AND AD_WF_NODE_TRL.AD_LANGUAGE=t.AD_LANGUAGE AND n.IsCentrallyMaintained='Y' AND n.IsActive='Y' AND (AD_WF_NODE_TRL.Name <> t.Name OR COALESCE(AD_WF_NODE_TRL.Description,' ') <> COALESCE(t.Description,' ') OR COALESCE(AD_WF_NODE_TRL.Help,' ') <> COALESCE(t.Help,' ')))
;

-- Apr 7, 2024, 9:31:10 PM UTC
UPDATE AD_WF_NODE SET Name=f.Name,Description=f.Description,Help=f.Help FROM AD_PROCESS f WHERE f.AD_Process_ID=AD_WF_NODE.AD_Process_ID AND AD_WF_NODE.IsCentrallyMaintained = 'Y' AND EXISTS (SELECT 1 FROM AD_PROCESS f WHERE f.AD_Process_ID=AD_WF_NODE.AD_Process_ID AND (f.Name <> AD_WF_NODE.Name OR COALESCE(f.Description,' ') <> COALESCE(AD_WF_NODE.Description,' ') OR COALESCE(f.Help,' ') <> COALESCE(AD_WF_NODE.Help,' ')))
;

-- Apr 7, 2024, 9:31:10 PM UTC
UPDATE AD_WF_NODE_TRL SET Name=t.Name,Description=t.Description,Help=t.Help FROM AD_PROCESS_TRL t, AD_WF_NODE n WHERE AD_WF_NODE_TRL.AD_WF_Node_ID=n.AD_WF_Node_ID AND n.AD_Process_ID=t.AD_Process_ID AND AD_WF_NODE_TRL.AD_LANGUAGE=t.AD_LANGUAGE AND EXISTS (SELECT 1 FROM AD_PROCESS_TRL t, AD_WF_NODE n WHERE AD_WF_NODE_TRL.AD_WF_Node_ID=n.AD_WF_Node_ID AND n.AD_Process_ID=t.AD_Process_ID AND AD_WF_NODE_TRL.AD_LANGUAGE=t.AD_LANGUAGE AND n.IsCentrallyMaintained='Y' AND n.IsActive='Y' AND (AD_WF_NODE_TRL.Name <> t.Name OR COALESCE(AD_WF_NODE_TRL.Description,' ') <> COALESCE(t.Description,' ') OR COALESCE(AD_WF_NODE_TRL.Help,' ') <> COALESCE(t.Help,' ')))
;

-- Apr 7, 2024, 9:31:10 PM UTC
UPDATE AD_PRINTFORMATITEM SET Name = (SELECT e.Name FROM AD_ELEMENT e, AD_COLUMN c WHERE e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=AD_PRINTFORMATITEM.AD_Column_ID) WHERE AD_PRINTFORMATITEM.IsCentrallyMaintained='Y' AND EXISTS (SELECT 1 FROM AD_ELEMENT e, AD_COLUMN c WHERE e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=AD_PRINTFORMATITEM.AD_Column_ID AND e.Name<>AD_PRINTFORMATITEM.Name) AND EXISTS (SELECT 1 FROM AD_CLIENT WHERE AD_Client_ID=AD_PRINTFORMATITEM.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 7, 2024, 9:31:10 PM UTC
UPDATE AD_PRINTFORMATITEM SET PrintName = (SELECT e.PrintName FROM AD_ELEMENT e, AD_COLUMN c WHERE e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=AD_PRINTFORMATITEM.AD_Column_ID) WHERE AD_PRINTFORMATITEM.IsCentrallyMaintained='Y' AND EXISTS (SELECT 1 FROM AD_ELEMENT e, AD_COLUMN c, AD_PRINTFORMAT pf WHERE e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=AD_PRINTFORMATITEM.AD_Column_ID AND LENGTH(AD_PRINTFORMATITEM.PrintName) > 0 AND e.PrintName<>AD_PRINTFORMATITEM.PrintName AND pf.AD_PrintFormat_ID=AD_PRINTFORMATITEM.AD_PrintFormat_ID AND pf.IsForm='N' AND IsTableBased='Y') AND EXISTS (SELECT 1 FROM AD_CLIENT WHERE AD_Client_ID=AD_PRINTFORMATITEM.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 7, 2024, 9:31:10 PM UTC
UPDATE AD_PRINTFORMATITEM_TRL SET Name = (SELECT e.Name FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_PRINTFORMATITEM p WHERE e.AD_LANGUAGE=AD_PRINTFORMATITEM_TRL.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=p.AD_Column_ID AND p.AD_PrintFormatItem_ID=AD_PRINTFORMATITEM_TRL.AD_PrintFormatItem_ID), Updated = statement_timestamp() WHERE EXISTS (SELECT 1 FROM AD_PRINTFORMATITEM p, AD_ELEMENT_TRL e, AD_COLUMN c WHERE AD_PRINTFORMATITEM_TRL.AD_PrintFormatItem_ID=p.AD_PrintFormatItem_ID AND p.AD_Column_ID=c.AD_Column_ID AND c.AD_Element_ID=e.AD_Element_ID AND c.AD_Process_ID IS NULL AND AD_PRINTFORMATITEM_TRL.AD_LANGUAGE=e.AD_LANGUAGE AND p.IsCentrallyMaintained='Y' AND p.IsActive='Y' AND (AD_PRINTFORMATITEM_TRL.Name <> e.Name))
;

-- Apr 7, 2024, 9:31:10 PM UTC
UPDATE AD_PRINTFORMATITEM_TRL SET PrintName = (SELECT e.PrintName FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_PRINTFORMATITEM pfi WHERE e.AD_LANGUAGE=AD_PRINTFORMATITEM_TRL.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=pfi.AD_Column_ID AND pfi.AD_PrintFormatItem_ID=AD_PRINTFORMATITEM_TRL.AD_PrintFormatItem_ID) WHERE EXISTS (SELECT 1 FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_PRINTFORMATITEM pfi, AD_PRINTFORMAT pf WHERE e.AD_LANGUAGE=AD_PRINTFORMATITEM_TRL.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=pfi.AD_Column_ID AND pfi.AD_PrintFormatItem_ID=AD_PRINTFORMATITEM_TRL.AD_PrintFormatItem_ID AND pfi.IsCentrallyMaintained='Y' AND LENGTH(pfi.PrintName) > 0 AND (e.PrintName<>AD_PRINTFORMATITEM_TRL.PrintName OR AD_PRINTFORMATITEM_TRL.PrintName IS NULL) AND pf.AD_PrintFormat_ID=pfi.AD_PrintFormat_ID AND pf.IsForm='N' AND IsTableBased='Y') AND EXISTS (SELECT 1 FROM AD_CLIENT WHERE AD_Client_ID=AD_PRINTFORMATITEM_TRL.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 7, 2024, 9:31:10 PM UTC
UPDATE AD_PRINTFORMATITEM_TRL SET PrintName = (SELECT pfi.PrintName FROM AD_PRINTFORMATITEM pfi WHERE pfi.AD_PrintFormatItem_ID=AD_PRINTFORMATITEM_TRL.AD_PrintFormatItem_ID) WHERE EXISTS (SELECT 1 FROM AD_PRINTFORMATITEM pfi, AD_PRINTFORMAT pf WHERE pfi.AD_PrintFormatItem_ID=AD_PRINTFORMATITEM_TRL.AD_PrintFormatItem_ID AND pfi.IsCentrallyMaintained='Y' AND LENGTH(pfi.PrintName) > 0 AND pfi.PrintName<>AD_PRINTFORMATITEM_TRL.PrintName AND pf.AD_PrintFormat_ID=pfi.AD_PrintFormat_ID AND pf.IsForm='N' AND pf.IsTableBased='Y') AND EXISTS (SELECT 1 FROM AD_CLIENT WHERE AD_Client_ID=AD_PRINTFORMATITEM_TRL.AD_Client_ID AND IsMultiLingualDocument='N')
;

-- Apr 7, 2024, 9:31:10 PM UTC
UPDATE AD_PRINTFORMATITEM_TRL SET PrintName = NULL WHERE PrintName IS NOT NULL AND EXISTS (SELECT 1 FROM AD_PRINTFORMATITEM pfi WHERE pfi.AD_PrintFormatItem_ID=AD_PRINTFORMATITEM_TRL.AD_PrintFormatItem_ID AND pfi.IsCentrallyMaintained='Y' AND (LENGTH (pfi.PrintName) = 0 OR pfi.PrintName IS NULL))
;

-- Apr 7, 2024, 9:31:10 PM UTC
UPDATE AD_MENU SET Name = (SELECT Name FROM AD_WINDOW w WHERE AD_MENU.AD_Window_ID=w.AD_Window_ID), Description = (SELECT Description FROM AD_WINDOW w WHERE AD_MENU.AD_Window_ID=w.AD_Window_ID) WHERE AD_MENU.AD_Window_ID IS NOT NULL AND AD_MENU."action" = 'W' AND AD_MENU.IsCentrallyMaintained='Y' AND AD_MENU.IsActive='Y'
;

-- Apr 7, 2024, 9:31:10 PM UTC
UPDATE AD_MENU_TRL SET Name = (SELECT wt.Name FROM AD_WINDOW_TRL wt, AD_MENU m WHERE AD_MENU_TRL.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Window_ID=wt.AD_Window_ID AND AD_MENU_TRL.AD_LANGUAGE=wt.AD_LANGUAGE), Description = (SELECT wt.Description FROM AD_WINDOW_TRL wt, AD_MENU m WHERE AD_MENU_TRL.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Window_ID=wt.AD_Window_ID AND AD_MENU_TRL.AD_LANGUAGE=wt.AD_LANGUAGE), IsTranslated = (SELECT wt.IsTranslated FROM AD_WINDOW_TRL wt, AD_MENU m WHERE AD_MENU_TRL.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Window_ID=wt.AD_Window_ID AND AD_MENU_TRL.AD_LANGUAGE=wt.AD_LANGUAGE) WHERE EXISTS (SELECT 1 FROM AD_WINDOW_TRL wt, AD_MENU m WHERE AD_MENU_TRL.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Window_ID=wt.AD_Window_ID AND AD_MENU_TRL.AD_LANGUAGE=wt.AD_LANGUAGE AND m.AD_Window_ID IS NOT NULL AND m."action" = 'W' AND m.IsCentrallyMaintained='Y' AND m.IsActive='Y')
;

-- Apr 7, 2024, 9:31:10 PM UTC
UPDATE AD_MENU SET Name = (SELECT p.Name FROM AD_PROCESS p WHERE AD_MENU.AD_Process_ID=p.AD_Process_ID), Description = (SELECT p.Description FROM AD_PROCESS p WHERE AD_MENU.AD_Process_ID=p.AD_Process_ID) WHERE AD_MENU.AD_Process_ID IS NOT NULL AND AD_MENU."action" IN ('R', 'P') AND AD_MENU.IsCentrallyMaintained='Y' AND AD_MENU.IsActive='Y'
;

-- Apr 7, 2024, 9:31:10 PM UTC
UPDATE AD_MENU_TRL SET Name = (SELECT pt.Name FROM AD_PROCESS_TRL pt, AD_MENU m WHERE AD_MENU_TRL.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Process_ID=pt.AD_Process_ID AND AD_MENU_TRL.AD_LANGUAGE=pt.AD_LANGUAGE), Description = (SELECT pt.Description FROM AD_PROCESS_TRL pt, AD_MENU m WHERE AD_MENU_TRL.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Process_ID=pt.AD_Process_ID AND AD_MENU_TRL.AD_LANGUAGE=pt.AD_LANGUAGE), IsTranslated = (SELECT pt.IsTranslated FROM AD_PROCESS_TRL pt, AD_MENU m WHERE AD_MENU_TRL.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Process_ID=pt.AD_Process_ID AND AD_MENU_TRL.AD_LANGUAGE=pt.AD_LANGUAGE) WHERE EXISTS (SELECT 1 FROM AD_PROCESS_TRL pt, AD_MENU m WHERE AD_MENU_TRL.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Process_ID=pt.AD_Process_ID AND AD_MENU_TRL.AD_LANGUAGE=pt.AD_LANGUAGE AND m.AD_Process_ID IS NOT NULL AND m."action" IN ('R', 'P') AND m.IsCentrallyMaintained='Y' AND m.IsActive='Y')
;

-- Apr 7, 2024, 9:31:10 PM UTC
UPDATE AD_MENU SET Name = (SELECT Name FROM AD_FORM f WHERE AD_MENU.AD_Form_ID=f.AD_Form_ID), Description = (SELECT Description FROM AD_FORM f WHERE AD_MENU.AD_Form_ID=f.AD_Form_ID) WHERE AD_MENU.AD_Form_ID IS NOT NULL AND AD_MENU."action" = 'X' AND AD_MENU.IsCentrallyMaintained='Y' AND AD_MENU.IsActive='Y'
;

-- Apr 7, 2024, 9:31:10 PM UTC
UPDATE AD_MENU_TRL SET Name = (SELECT ft.Name FROM AD_FORM_TRL ft, AD_MENU m WHERE AD_MENU_TRL.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Form_ID=ft.AD_Form_ID AND AD_MENU_TRL.AD_LANGUAGE=ft.AD_LANGUAGE), Description = (SELECT ft.Description FROM AD_FORM_TRL ft, AD_MENU m WHERE AD_MENU_TRL.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Form_ID=ft.AD_Form_ID AND AD_MENU_TRL.AD_LANGUAGE=ft.AD_LANGUAGE), IsTranslated = (SELECT ft.IsTranslated FROM AD_FORM_TRL ft, AD_MENU m WHERE AD_MENU_TRL.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Form_ID=ft.AD_Form_ID AND AD_MENU_TRL.AD_LANGUAGE=ft.AD_LANGUAGE) WHERE EXISTS (SELECT 1 FROM AD_FORM_TRL ft, AD_MENU m WHERE AD_MENU_TRL.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Form_ID=ft.AD_Form_ID AND AD_MENU_TRL.AD_LANGUAGE=ft.AD_LANGUAGE AND m.AD_Form_ID IS NOT NULL AND m."action" = 'X' AND m.IsCentrallyMaintained='Y' AND m.IsActive='Y')
;

-- Apr 7, 2024, 9:31:10 PM UTC
UPDATE AD_MENU SET Name = (SELECT p.Name FROM AD_WORKFLOW p WHERE AD_MENU.AD_Workflow_ID=p.AD_Workflow_ID), Description = (SELECT p.Description FROM AD_WORKFLOW p WHERE AD_MENU.AD_Workflow_ID=p.AD_Workflow_ID) WHERE AD_MENU.AD_Workflow_ID IS NOT NULL AND AD_MENU."action" = 'F' AND AD_MENU.IsCentrallyMaintained='Y' AND AD_MENU.IsActive='Y'
;

-- Apr 7, 2024, 9:31:10 PM UTC
UPDATE AD_MENU_TRL SET Name = (SELECT pt.Name FROM AD_WORKFLOW_TRL pt, AD_MENU m WHERE AD_MENU_TRL.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Workflow_ID=pt.AD_Workflow_ID AND AD_MENU_TRL.AD_LANGUAGE=pt.AD_LANGUAGE), Description = (SELECT pt.Description FROM AD_WORKFLOW_TRL pt, AD_MENU m WHERE AD_MENU_TRL.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Workflow_ID=pt.AD_Workflow_ID AND AD_MENU_TRL.AD_LANGUAGE=pt.AD_LANGUAGE), IsTranslated = (SELECT pt.IsTranslated FROM AD_WORKFLOW_TRL pt, AD_MENU m WHERE AD_MENU_TRL.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Workflow_ID=pt.AD_Workflow_ID AND AD_MENU_TRL.AD_LANGUAGE=pt.AD_LANGUAGE) WHERE EXISTS (SELECT 1 FROM AD_WORKFLOW_TRL pt, AD_MENU m WHERE AD_MENU_TRL.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Workflow_ID=pt.AD_Workflow_ID AND AD_MENU_TRL.AD_LANGUAGE=pt.AD_LANGUAGE AND m.AD_Workflow_ID IS NOT NULL AND m."action" = 'F' AND m.IsCentrallyMaintained='Y' AND m.IsActive='Y')
;

-- Apr 7, 2024, 9:31:10 PM UTC
UPDATE AD_MENU SET Name = (SELECT Name FROM AD_TASK f WHERE AD_MENU.AD_Task_ID=f.AD_Task_ID), Description = (SELECT Description FROM AD_TASK f WHERE AD_MENU.AD_Task_ID=f.AD_Task_ID) WHERE AD_MENU.AD_Task_ID IS NOT NULL AND AD_MENU."action" = 'T' AND AD_MENU.IsCentrallyMaintained='Y' AND AD_MENU.IsActive='Y'
;

-- Apr 7, 2024, 9:31:10 PM UTC
UPDATE AD_MENU_TRL SET Name = (SELECT ft.Name FROM AD_TASK_TRL ft, AD_MENU m WHERE AD_MENU_TRL.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Task_ID=ft.AD_Task_ID AND AD_MENU_TRL.AD_LANGUAGE=ft.AD_LANGUAGE), Description = (SELECT ft.Description FROM AD_TASK_TRL ft, AD_MENU m WHERE AD_MENU_TRL.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Task_ID=ft.AD_Task_ID AND AD_MENU_TRL.AD_LANGUAGE=ft.AD_LANGUAGE), IsTranslated = (SELECT ft.IsTranslated FROM AD_TASK_TRL ft, AD_MENU m WHERE AD_MENU_TRL.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Task_ID=ft.AD_Task_ID AND AD_MENU_TRL.AD_LANGUAGE=ft.AD_LANGUAGE) WHERE EXISTS (SELECT 1 FROM AD_TASK_TRL ft, AD_MENU m WHERE AD_MENU_TRL.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Task_ID=ft.AD_Task_ID AND AD_MENU_TRL.AD_LANGUAGE=ft.AD_LANGUAGE AND m.AD_Task_ID IS NOT NULL AND m."action" = 'T' AND m.IsCentrallyMaintained='Y' AND m.IsActive='Y')
;

-- Apr 7, 2024, 9:31:10 PM UTC
UPDATE AD_MENU SET Name = (SELECT Name FROM AD_InfoWindow f WHERE AD_MENU.AD_InfoWindow_ID=f.AD_InfoWindow_ID), Description = (SELECT Description FROM AD_InfoWindow f WHERE AD_MENU.AD_InfoWindow_ID=f.AD_InfoWindow_ID) WHERE AD_MENU.AD_InfoWindow_ID IS NOT NULL AND AD_MENU."action" = 'I' AND AD_MENU.IsCentrallyMaintained='Y' AND AD_MENU.IsActive='Y'
;

-- Apr 7, 2024, 9:31:10 PM UTC
UPDATE AD_MENU_TRL SET Name = (SELECT ft.Name FROM AD_InfoWindow_TRL ft, AD_MENU m WHERE AD_MENU_TRL.AD_Menu_ID=m.AD_Menu_ID AND m.AD_InfoWindow_ID=ft.AD_InfoWindow_ID AND AD_MENU_TRL.AD_LANGUAGE=ft.AD_LANGUAGE), Description = (SELECT ft.Description FROM AD_InfoWindow_TRL ft, AD_MENU m WHERE AD_MENU_TRL.AD_Menu_ID=m.AD_Menu_ID AND m.AD_InfoWindow_ID=ft.AD_InfoWindow_ID AND AD_MENU_TRL.AD_LANGUAGE=ft.AD_LANGUAGE), IsTranslated = (SELECT ft.IsTranslated FROM AD_InfoWindow_TRL ft, AD_MENU m WHERE AD_MENU_TRL.AD_Menu_ID=m.AD_Menu_ID AND m.AD_InfoWindow_ID=ft.AD_InfoWindow_ID AND AD_MENU_TRL.AD_LANGUAGE=ft.AD_LANGUAGE) WHERE EXISTS (SELECT 1 FROM AD_InfoWindow_TRL ft, AD_MENU m WHERE AD_MENU_TRL.AD_Menu_ID=m.AD_Menu_ID AND m.AD_InfoWindow_ID=ft.AD_InfoWindow_ID AND AD_MENU_TRL.AD_LANGUAGE=ft.AD_LANGUAGE AND m.AD_InfoWindow_ID IS NOT NULL AND m."action" = 'I' AND m.IsCentrallyMaintained='Y' AND m.IsActive='Y')
;

-- Apr 7, 2024, 9:31:10 PM UTC
UPDATE AD_COLUMN_TRL SET Name = (SELECT e.Name FROM AD_COLUMN c INNER JOIN AD_ELEMENT_TRL e ON (c.AD_Element_ID=e.AD_Element_ID) WHERE AD_COLUMN_TRL.AD_Column_ID=c.AD_Column_ID AND AD_COLUMN_TRL.AD_LANGUAGE=e.AD_LANGUAGE) WHERE EXISTS (SELECT 1 FROM AD_COLUMN c INNER JOIN AD_ELEMENT_TRL e ON (c.AD_Element_ID=e.AD_Element_ID) WHERE AD_COLUMN_TRL.AD_Column_ID=c.AD_Column_ID AND AD_COLUMN_TRL.AD_LANGUAGE=e.AD_LANGUAGE AND AD_COLUMN_TRL.Name<>e.Name)
;

-- Apr 7, 2024, 9:31:11 PM UTC
UPDATE AD_TABLE SET Name=e.Name,Description=e.Description FROM AD_ELEMENT e WHERE AD_TABLE.TableName||'_ID'=e.ColumnName AND EXISTS (SELECT 1 FROM AD_ELEMENT e WHERE AD_TABLE.TableName||'_ID'=e.ColumnName AND AD_TABLE.Name<>e.Name)
;

-- Apr 7, 2024, 9:31:11 PM UTC
UPDATE AD_TABLE_TRL SET Name = (SELECT e.Name FROM AD_TABLE t INNER JOIN AD_ELEMENT ex ON (t.TableName||'_ID'=ex.ColumnName) INNER JOIN AD_ELEMENT_TRL e ON (ex.AD_Element_ID=e.AD_Element_ID) WHERE AD_TABLE_TRL.AD_Table_ID=t.AD_Table_ID AND AD_TABLE_TRL.AD_LANGUAGE=e.AD_LANGUAGE) WHERE EXISTS (SELECT 1 FROM AD_TABLE t INNER JOIN AD_ELEMENT ex ON (t.TableName||'_ID'=ex.ColumnName) INNER JOIN AD_ELEMENT_TRL e ON (ex.AD_Element_ID=e.AD_Element_ID) WHERE AD_TABLE_TRL.AD_Table_ID=t.AD_Table_ID AND AD_TABLE_TRL.AD_LANGUAGE=e.AD_LANGUAGE AND AD_TABLE_TRL.Name<>e.Name)
;

-- Apr 7, 2024, 9:31:11 PM UTC
UPDATE AD_TABLE SET Name=e.Name||' Trl',Description=e.Description FROM AD_ELEMENT e WHERE SUBSTR(AD_TABLE.TableName,1,LENGTH(AD_TABLE.TableName)-4)||'_ID'=e.ColumnName AND AD_TABLE.TableName LIKE '%_Trl' AND EXISTS (SELECT 1 FROM AD_ELEMENT e WHERE SUBSTR(AD_TABLE.TableName,1,LENGTH(AD_TABLE.TableName)-4)||'_ID'=e.ColumnName AND AD_TABLE.Name<>e.Name)
;

-- Apr 7, 2024, 9:31:11 PM UTC
UPDATE AD_TABLE_TRL SET Name = (SELECT e.Name || ' **' FROM AD_TABLE t INNER JOIN AD_ELEMENT ex ON (SUBSTR(t.TableName,1,LENGTH(t.TableName)-4)||'_ID'=ex.ColumnName) INNER JOIN AD_ELEMENT_TRL e ON (ex.AD_Element_ID=e.AD_Element_ID) WHERE AD_TABLE_TRL.AD_Table_ID=t.AD_Table_ID AND AD_TABLE_TRL.AD_LANGUAGE=e.AD_LANGUAGE) WHERE EXISTS (SELECT 1 FROM AD_TABLE t INNER JOIN AD_ELEMENT ex ON (SUBSTR(t.TableName,1,LENGTH(t.TableName)-4)||'_ID'=ex.ColumnName) INNER JOIN AD_ELEMENT_TRL e ON (ex.AD_Element_ID=e.AD_Element_ID) WHERE AD_TABLE_TRL.AD_Table_ID=t.AD_Table_ID AND AD_TABLE_TRL.AD_LANGUAGE=e.AD_LANGUAGE AND t.TableName LIKE '%_Trl' AND AD_TABLE_TRL.Name<>e.Name)
;

