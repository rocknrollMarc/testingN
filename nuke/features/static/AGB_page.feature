@AGB_page
Feature: AGB Page

  In order to understand the business IDeas behind send and store
  As a User
  I want to have a AGB page

  Scenario: AGB Page
    Given I am on the "Start page"
    When I click the "AGB" link
    Then I should be on the "AGB" page

  @SS-219
  Scenario: Infos zum Wiederrufsrecht

    In order to know if I can cancel my order
    As a User
    I want to read the Infod on Wiederrufsrecht

    Given I am on the "AGB" page
    Then I should see the content containing:
    """
    Wiederruf
    """

  @SS-80
  @SS-382
  Scenario: Terms and condition
    Given I am on the "AGB" page
    Then I should see the following content:
      """
      ALLGEMEINE GESCHÄFTSBEDINGUNGEN
      Send&Store ist ein Angebot der Liquid Labs GmbH, Steindamm 80, 20099 Hamburg (nachfolgend „Send&Store“ genannt). Für die Geschäftsbeziehung zwischen Send&Store und seinen Kunden gelten die nachfolgenden Allgemeinen Geschäftsbedingungen in ihrer jeweiligen Fassung.
 
      1.      Anwendungsbereich
      1.1.     Send&Store ermöglicht seinen Kunden die Abholung, Lagerung und Zustellung von Paketen (nachfolgend „Sendungen“ genannt), zu den sich aus diesen Allgemeinen Geschäftsbedingungen ergebenden Konditionen.
      1.2.     Das Angebot richtet sich an Verbraucher im Sinne des § 13 BGB sowie an Unternehmer im Sinne des § 14 BGB, die ihren (Wohn-) Sitz in der Bundesrepublik Deutschland haben.
 
      2.      Vertragsschluss
      2.1.     Die Auslobung auf der Internetseite www.sendandstore.de stellt lediglich die Aufforderung zu Abgabe eines Angebots auf Abschluss eines Logistik-/Lagervertrages durch den Kunden dar. Ein Vertrag kommt erst durch die Zusendung einer gesonderten Auftragsbestätigung durch Send&Store zustande.
      2.2.     Mit Abgabe seines Angebots erklärt der Kunde, dass er diese Allgemeinen Geschäftsbedingungen zur Kenntnis genommen hat und dass die Sendungen den Vorgaben in Ziff. 4-6 entsprechen.
      2.3.     Send&Store behält sich vor, sich zur Erbringung seiner Leistungen Subunternehmern zu bedienen. Vertragspartner des Kunden bezüglich sämtlicher Leistungen ist einzig Send&Store.
 
      3.      Widerrufsbelehrung für Verbraucher im Sinne des § 13 BGB
 
 
      Sie haben das Recht, binnen vierzehn Tagen ohne Angabe von Gründen diesen Vertrag zu widerrufen.
 
      Die Widerrufsfrist beträgt vierzehn Tage ab dem Tag des Vertragsschlusses.
 
      Um Ihr Widerrufsrecht auszuüben, müssen Sie uns (Liquid Labs GmbH, Steindamm 80, 20099 Hamburg, Tel.: 040/60945101, E-Mail: info@sendandstore.de) mittels einer eindeutigen Erklärung (z.B. ein mit der Post versandter Brief, Telefax oder E-Mail) über Ihren Entschluss, diesen Vertrag zu widerrufen, informieren. Sie können dafür das beigefügte Muster-Widerrufsformular verwenden, das jedoch nicht vorgeschrieben ist.
 
      Zur Wahrung der Widerrufsfrist reicht es aus, dass Sie die Mitteilung über die Ausübung des Widerrufsrechts vor Ablauf der Widerrufsfrist absenden.
 
      Widerrufsfolgen
      Wenn Sie diesen Vertrag widerrufen, haben wir Ihnen alle Zahlungen, die wir von Ihnen erhalten haben, einschließlich der Lieferkosten (mit Ausnahme der zusätzlichen Kosten, die sich daraus ergeben, dass Sie eine andere Art der Lieferung als die von uns angebotene, günstigste Standardlieferung gewählt haben), unverzüglich und spätestens binnen vierzehn Tagen ab dem Tag zurückzuzahlen, an dem die Mitteilung über Ihren Widerruf dieses Vertrags bei uns eingegangen ist. Für diese Rückzahlung verwenden wir dasselbe Zahlungsmittel, das Sie bei der ursprünglichen Transaktion eingesetzt haben, es sei denn, mit Ihnen wurde ausdrücklich etwas anderes vereinbart; in keinem Fall werden Ihnen wegen dieser Rückzahlung Entgelte berechnet. Haben Sie verlangt, dass die Dienstleistung während der Widerrufsfrist beginnen soll, so haben Sie uns einen angemessenen Betrag zu zahlen, der dem Anteil der bis zu dem Zeitpunkt, zu dem Sie uns von der Ausübung des Widerrufsrechts hinsichtlich dieses Vertrags unterrichten, bereits erbrachten Dienstleistungen im Vergleich zum Gesamtumfang der im Vertrag vorgesehenen Dienstleistungen entspricht.
 
 
      4.      Verpacken/Versenden
      4.1.  Sendungen sind durch den Auftraggeber nach Inhalt, Art der Versendung und Umfang sicher zu verpacken, damit eine Beschädigung während des Transportes ausgeschlossen wird und der Inhalt vor Verlust und Beschädigung geschützt ist. Zur Verpackung gehören immer eine geeignete Außenverpackung, eine geeignete Innenverpackung sowie ein sicherer Verschluss.
      4.1.1.    Die Außenverpackung muss dem Inhalt gerecht so beschaffen sein, dass die verpackten Gegenstände nicht herausfallen, keine anderen Sendungen beschädigen und nicht selbst beschädigt werden. Es ist eine ausreichende Innenverpackung vorzusehen und durch Füllstoffe zu ergänzen. Bei transportsensiblen Gegenständen muss die Verpackung auf deren besondere Empfindlichkeit abgestimmt sein, um Eigenart, Menge sowie alle anderen Besonderheiten des jeweiligen Inhalts im Einzelfall zu berücksichtigen. Die Verpackung muss den Inhalt der Sendung gegen Beanspruchungen, denen sie normalerweise während des Versands ausgesetzt ist (z.B. durch Druck, Stoß, Fall, Vibration oder Temperatureinflüsse), sicher schützen. Eine Außenverpackung muss hinreichend fest und druckstabil sein. Sie muss außerdem ausreichend groß bemessen sein, um Platz für den gesamten Inhalt und die notwendigen Innenverpackungsteile zu bieten. Sie darf keinen Rückschluss auf Art und Wert des Gutes zulassen.
      4.1.2.    Die Innenverpackung muss den Inhalt fixieren und zur Außenverpackung hin und bei mehreren Inhaltsteilen untereinander allseitig polstern. Verkaufs- und Lagerverpackungen sind oftmals nur für den palettierten Versand ausgelegt. Für den Einzelversand sind zusätzliche Verpackungsmaßnahmen (z.B. Formschaum) als Transportverpackung zwingend erforderlich.
      4.1.3.    Zum Verschließen der Pakete sind widerstandsfähige Materialien (z.B. reißfeste, selbstklebende Kunststoff-Packbänder oder faserverstärkte Nassklebebänder) zu verwenden, die den Sendungszusammenhalt garantieren. Je schwerer eine Sendung ist, desto widerstandsfähiger muss der Verschluss ausgeführt sein.
      4.1.4.    Verpackungen oder Verschlüsse dürfen keine scharfen Kanten, Ecken oder Spitzen, z. B. hervorstehende Nägel, Klammern, Holzsplitter oder Drahtenden, aufweisen. Die Verpackung muss das Transportgut vollständig umschließen.
 
      4.2.     Die Verpackung darf die in der Preisübersicht auf www.sendandstore.de/pricing vorgegebenen Maße nicht überschreiten.
      4.3.     Vor der Versendung muss die Verpackung mit dem von Send&Store zur Verfügung gestellten Adressaufkleber versehen werden, welcher die vollständigen Adressdaten des Kunden enthält. Postfach-Adressen sowie Adressen außerhalb der Bundesrepublik Deutschland können nicht angegeben werden. Zusätzlich ist ein weiterer Adressaufkleber in dem Paket zu platzieren. Im Falle der Unlesbarkeit oder der Zerstörung des auf dem Paket befindlichen Adressaufklebers ist Send&Store oder ein beauftragter Dritter berechtigt, die Sendung zu öffnen, um die Adressdaten zu ermitteln.
      4.4.     Die Abholung erfolgt an dem vereinbarten Abholtag an der von dem Kunden angegeben Anschrift. Die Abholung erfolgt an der Haustür. Wahlweise können die Sendungen auch bei einem Hermes Paketshop abgegeben werden.
   
      5.      Lagern/Rücksendung
      5.1.     Send&Store lagert die Sendung des Kunden bis zur Rücksendungsanforderung des Kunden ein.
      5.2.     Auf Anforderung des Kunden wird die Sendung grundsätzlich an die auf dem Adressaufkleber angegebene Anschrift gesendet, es sei denn, der Kunde teilt Send&Store spätestens eine (1) Woche vor Ablauf der Lagerzeit eine abweichende Anschrift innerhalb Deutschlands mit, an die die Sendung gesandt werden soll. 
      5.3.     Die Lagerzeit kann von dem Kunden jederzeit beendet werden. Das Rücksendeverlangen vor Ende der vereinbarten Lagerzeit stellt eine Kündigung i.S. des § 415 HGB dar. Der Kunde hat in diesem Fall keinen Anspruch auf die Rückerstattung des bereits eingezogenen Beförderungs- und Lagerentgelts für den laufenden Monat. Ist das Beförderungs- und Lagerentgelt noch nicht geleistet, hat Send&Store weiterhin einen Anspruch auf Zahlung des vereinbarten Entgelts in voller Höhe.
      5.4.     Kann die Sendung weder dem Kunden noch einem von ihm schriftlich bevollmächtigten Dritten (Empfangsbevollmächtigter) zugestellt werden, ist Send&Store berechtigt, die Ware an eine Person zu übergeben, von der den Umständen nach angenommen werden kann, dass sie zur Annahme der Sendung berechtigt ist. Hierunter fallen Angehörige des Kunden, oder andere, in Wohnung des Kunden anwesende Personen, sowie Nachbarn, sofern nach den Umständen nach angenommen werden kann, dass sie zur Annahme der Sendung berechtigt sind.
      5.5.     Sollte die Sendung nicht gemäß Ziff. 5.5 zugestellt werden können, wird sie für einen Zeitraum von 10 Tagen zur Abholung in einem Hermes Paketshop bereitgehalten. Nach Ablauf dieser Frist gilt die Sendung als unzustellbar.
      5.6.     Im Falle von unzustellbaren Sendungen werden zunächst Weisungen des Kunden eingeholt und die Sendung wird weiterhin von Send&Store bereitgehalten. Die entstehenden Kosten für die Bereithaltung und das weitere Verfahren hat der Kunde zu tragen. Kann der Kunde nicht ermittelt werden, ist Send&Store zur Ermittlung eines Adressaten berechtigt, die Sendung zu öffnen. Kann auch durch die Öffnung der Sendung kein Adressat oder sonstiger Berechtigter ermittelt werden oder ist eine Ablieferung bzw. Rückgabe der Sendung aus anderen Gründen nicht möglich oder nicht zumutbar, ist Send&Store berechtigt, gemäß § 419 Abs. 3 HGB nach Ablauf einer angemessenen Frist über die Inhalte zu verfügen. Etwaige Schadensersatzansprüche des Kunden bleiben hiervon unberührt. Verweigert der Kunde die Rücknahme, ist Send&Store berechtigt, über die Sendung auf Kosten des Kunden nach pflichtgemäßem Ermessen zu verfügen, u. a. auch zu veräußern oder zu vernichten. Unverwertbares oder verdorbenes Gut sowie Gefahrgüter (siehe unten Ziff. 6) können von Send&Store unverzüglich vernichtet werden.
 
      6.      Leistungsausschlüsse
      6.1.     Folgende Sendungen können durch Send&Store weder versandt noch gelagert werden:
      6.1.1.    Sendungen, deren Inhalt einen Zeitwert von mehr als EUR 500,00 hat und die nicht zusätzlich durch eine von Send&Store angebotene Zusatzversicherung versichert sind;
      6.1.2.    Sendungen, deren Inhalt, äußere Gestaltung, Beförderung oder Lagerung gegen gesetzliche oder behördliche Verbote verstoßen, bzw. mit besonderen behördlichen Auflagen verbunden sind;
      6.1.3.    Sendungen, die aufgrund ihrer äußeren Beschaffenheit oder durch ihren Inhalt eine Gefährdung von Personen oder Beschädigung von materiellen Gütern sowie anderen Sendungen hervorrufen können;
      6.1.4.    Sendungen, deren Beförderung oder Lagerung nationalen Gefahrgutvorschriften unterliegen, dazu zählen unter anderem, aber nicht ausschließlich, radioaktive Stoffe, Drogen, explosive Güter, Waffen und Munition, etc.;
      6.1.5.    Sendungen mit unzureichender Verpackung, insbesondere in Fällen von flüssigem Inhalt, soweit dieser nicht auslaufsicher verpackt ist;
      6.1.6.    Sendungen, die Verbrauchsgüter oder verderbliche Güter mit begrenzter Haltbarkeitsdauer, lebende Pflanzen oder lebende Tiere sowie Teile oder sterbliche Überreste von Tieren oder Menschen enthalten;
      6.1.7.    Sendungen, deren Inhalt von außergewöhnlichem oder nur schwer schätzbarem Wert ist. Hierzu zählen Kunstgegenstände, Antiquitäten, Unikate und andere Kostbarkeiten, Briefmarken, Münzen und Medaillen, Bargeld, Urkunden, Schecks und sonstige Wertpapiere, Eintrittskarten, Fahrscheine und sonstige Berechtigungsscheine, Unterlagen, Zahlungsmittel, alle Arten von Aktien, Edelmetall in Barrenform, Silber und Gold, Schmuck, Uhren, Mobiltelefone, Edelmetalle und Edelsteine sowie Pelze;
      6.1.8.    Sendungen, die unverzollten Tabak oder Alkohol enthalten;
      6.1.9.    Sendungen, deren Abhol- oder Zustelladresse ungeeignet oder nur unter unverhältnismäßigen Schwierigkeiten erreichbar ist oder für deren Einlieferung oder Zustellung besondere Aufwendungen oder Sicherheitsmaßnahmen erforderlich sind;
      6.1.10. Sendungen, deren Adressaufkleber mit einer Postfachanschrift, einer Packstation oder eine Großkundenpostleitzahl versehen ist.
      6.2.     Bei begründetem Verdacht des Verstoßes gegen die in Ziff. 6.1 aufgelisteten Ausschlüsse ist Send&Store oder ein beauftragter Dritter berechtigt, die Sendung zu öffnen und den Inhalt zu überprüfen.
      6.3.     Send&Store behält sich vor, Sendungen, die gegen Ziff. 6.1 verstoßen oder deren Maße die in der aktuellen Preisübersicht angegeben Maximalmaße überschreiten auf Kosten des Kunden an die auf dem Rücksendeschein angegebene Anschrift zu senden.
   
      7.      Laufzeit/Kündigung
      7.1.     Send&Store verpflichtet sich, die Sendungen des Kunden, sofern sie nicht unter einen Ausschluss gem. Ziff. 6.1 fallen, für einen unbestimmten Zeitraum zu lagern.
      7.2.     Im Falle des Verstoßes gegen Ziff. 6.1 ist Send&Store berechtigt, den Vertrag jederzeit außerordentlich zu kündigen. Mit der Sendung wird entsprechend Ziff. 5.5 bis 5.7 verfahren. Gleiches gilt im Falle, dass der Kunde das vereinbarte Entgelt nicht bezahlt.
      7.3.     Der Kunde ist dazu berechtigt, jederzeit die vorzeitige Rücksendung zu verlangen. In diesem Fall gilt Ziff. 5.3.
 
      8.      Preise
      8.1.     Für die Einlagerung jeder Sendung zahlt der Kunde eine monatliche Gebühr, deren Höhe sich aus der jeweils aktuellen Preisübersicht ergibt.
      8.2.     Die monatliche Gebühr wird ab dem Zeitpunkt der Einlagerung in anteiliger Höhe fällig. Im Falle des Rückgabeersuchens während eines Monats wird die monatliche Gebühr gemäß Ziff. 5.3 in voller Höhe fällig.
      8.3.     Mit dem Rückgabeersuchen fällt eine einmalige Auslagerungsgebühr an, deren Höhe sich aus der jeweils aktuellen Preisübersicht ergibt.
      8.4.     Der Kunde ist verpflichtet, etwaige Mehrkosten zu erstatten, die aus einer Überschreitung der in Ziff. 4.2 vorgegeben Maße resultiert.
 
 
      9.      Haftung
      9.1.     Send&Store haftet gegenüber Verbrauchern i.S. des § 13 BGB bei nationalen Beförderungen ausschließlich gemäß §§ 407 ff., insbesondere §§ 425 ff. HGB, sowie bei Lagerung ausschließlich gemäß §§ 467 ff., insbesondere §§ 475 ff. HGB, sofern nicht ausdrücklich etwas anderes vereinbart wurde. Gegenüber Unternehmern i.S. des § 14 BGB gelten vorrangig die Bestimmungen der Allgemeinen Speditionsbedingungen (ADSp). Die vorgenannten gesetzlichen Regelungen gelten lediglich nachrangig, soweit nichts Abweichendes vereinbart wurde.
      9.2.     Eine Haftung für Schäden, die aus einer unzureichenden Verpackung resultieren, ist ausgeschlossen. Unzureichend ist eine Verpackung, die nicht den Vorgaben in Ziff. 4 entspricht.
      9.3.     Im Übrigen haften Send&Store sowie deren gesetzliche Vertreter oder Erfüllungsgehilfen nur für grobe Fahrlässigkeit und Vorsatz sowie bei Verletzung wesentlicher Vertragspflichten. Die Haftung ist im Falle einfacher Fahrlässigkeit auf den vorhersehbaren, typischerweise eintretenden Schaden begrenzt. Die Haftung wegen schuldhafter Verletzung des Lebens, des Körpers oder der Gesundheit bleibt unberührt.
      9.4.     Sollte der Kunde Send&Store eine unter die Ausschlüsse in Ziff. 6.1 fallende Sendung übergeben, und entsteht an dieser Sendung ein Schaden, der nach den Umständen nur aus der zu dem Ausschluss führenden Eigenschaft der Sendung entstehen konnte, so wird vermutet, dass der Schaden aus der Realisierung dieser Gefahr entstanden ist.
      9.5.     Äußerlich erkennbare Schäden sind bei der Übergabe an den Kunden, nicht äußerlich erkennbare Schäden binnen einer (1) Woche nach Übergabe an den Kunden zu rügen. Bei Unterlass einer Rüge binnen dieser Frist, wird vermutet, dass der Schaden bei Übergabe an den Kunden noch nicht vorhanden war.  9.6.     Für die Verjährung von Ansprüchen des Kunden aus dem Fracht- und Lagervertrag gelten § 439 und § 475a HGB. Im Übrigen gelten die gesetzlichen Verjährungsfristen. Für die Ansprüche aus deliktischer Haftung gelten die Verjährungsfristen des § 439 HGB entsprechend.
      9.7.     Der Kunde haftet Send&Store für alle Schäden, die aus einer unter die Ausschlüsse in Ziff. 6.1 fallenden Sendung resultieren. Sofern es sich bei dem Kunden um einen Verbraucher i.S. des § 13 BGB handelt, gilt dies nur, sofern in ein Verschulden trifft.
 
      10.   Datenschutz
      Bei allen Vorgängen der Datenverarbeitung (z.B. Erhebung, Verarbeitung und Übermittlung) verfahren wir nach den gesetzlichen Vorschriften. Ihre für die Geschäftsabwicklung notwendigen Daten werden von uns gespeichert und für die Bestellabwicklung im erforderlichen Umfang an von uns beauftragte Dienstleister (Hermes Logistik Gruppe Deutschland GmbH, Essener Straße 89, 22419 Hamburg; Hermes Fulfilment GmbH, Bannwarthstraße 5, 22179 Hamburg) weiter gegeben.
 

      11.   Schlussbestimmungen
      11.1.  Send&Store behält sich vor, die Allgemeinen Geschäftsbedingungen jederzeit zu ändern, insbesondere zur Verbesserung der Abwicklung oder zur Unterbindung von Missbrauch. Über die Änderungen erhält der Kunde eine Mitteilung in Textform. Widerspricht der Kunde nicht innerhalb eines (1) Monats schriftlich gegenüber Send&Store, gelten die Änderungen als genehmigt. Als Genehmigung gilt auch, wenn der Kunde die Leistung von Send&Store weiter in Anspruch nimmt. Hierauf wird der Kunde in der Änderungsmitteilung gesondert hingewiesen. Im Falle des Widerspruchs steht Send&Store ein außerordentliches Kündigungsrecht zu. Die eingelagerten Sendungen werden in diesem Fall auf Kosten des Kunden an diesen zurück gesendet.
      11.2.  Die Ungültigkeit einzelner Bestimmungen dieser Allgemeinen Geschäftsbedingungen berührt nicht die Wirksamkeit der Allgemeinen Geschäftsbedingungen im Übrigen.
      11.3.  Alleiniger Gerichtsstand für alle etwaigen Streitigkeiten aus und in Zusammenhang mit Vertrag ist der Sitz von Send&Store, sofern der Kunde Kaufmann ist. Im Übrigen gelten die Regelungen der §§ 12 ff. ZPO.
      """


