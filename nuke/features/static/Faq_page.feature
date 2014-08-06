@Faq_page
Feature: Faq page

  In order to have important questions answered
  As a User
  I want to have a Faq page

  Scenario: Faq page
    Given I am on the "Start page"
    When I click the "Faq" link
    Then I should be on the "Faq" page

  @SS-390
  Scenario: Updated Faq content
    Given I am on the "Faq" page
    Then I should see the following content:
    """
    Verpackung

    - Werden Kartons bereitgestellt oder muss ich eigene Kartons verwenden?
      Verwenden Sie bitte eigene, stabile und am Besten neue Kartons. Hinweise zum Material finden Sie unter der Seite “Packen”.

    - Wie schwer dürfen die Kartons maximal sein?
      Das Maximalgewicht liegt bei 25 kg pro Karton, wenn Sie diese im Paketshop abgeben. Sollten Sie Ihre Kartons von uns abholen lassen, liegt das Maximalgewicht bei 31,5 kg.

    - Welche Art von Dingen darf ich einlagern, welche nicht?
      Achten Sie bitte darauf, keine leicht zerbrechlichen Dinge wie Porzellan oder Glas einzulagern. Die Einlagerung von verderblichen, gefährlichen und gesetzlich verbotenen Gütern sowie Lebewesen bzw. Überresten von Lebewesen ist nicht gestattet. Nähere Informationen finden Sie unter der Rubrik “Packen” oder in unseren Allgemeinen Geschäftsbedingungen.

    - Wie verschließe ich meine Kartons sicher?
      Verschließen Sie die Kartons bitte mit ausreichend widerstandsfähigem Paketband. Achten Sie bei gebrauchten Kartons bitte darauf, dass missverständliche Informationen wie alte Barcodes und Adressen nicht mehr erkennbar sind.

    Abholung und Lieferung

    - Wie kann ich mir meine eingelagerten Dinge zurücksenden lassen?
      Loggen Sie sich einfach auf der Website ein und bestellen Sie die Kartons, die Sie zurückhaben möchten, mit einem simplen Mausklick auf “Anfordern” zurück.

    - Wie teuer ist die Lieferung, wenn ich meine Sachen zurück haben möchte?
      Für den Rückversand erheben wir eine einmalige Gebühr von 11,99€ pro Karton.

    - Können meine Kartons an eine andere Adresse zurückgeschickt werden?
      Grundsätzlich werden Ihre Kartons an die Adresse gesendet, die Sie bei uns hinterlegt haben.
      Sollte sich die Adresse allerdings ändern, erneuern Sie bitte vor der Rückbestellung Ihre Adressdaten in Ihrem Profil, so dass Sie sichergehen können, dass Ihre Kartons wie gewünscht bei Ihnen ankommen.

    - Was passiert, wenn ich den Abhol- oder Liefertermin verpasse?
      Sollten Sie den Liefertermin verpassen, wird der Zusteller an den darrauffolgenden drei Werktagen erneut versuchen, Ihre Sendung zu zustellen. Sollten Sie einen Abholtermin verpassen, wird der Zusteller am darauffolgenden Werktag einen weiteren Versuch unternehmen, die Sendung abzuholen. Ist die Abholung wieder erfolglos, erstellen Sie bitte einen neuen Termin über unser Dashboard.
 
    - Wie lange dauert es, bis meine Sachen bei mir ankommen?
      In der Regel dauert es zwei bis drei Werktage, bis Ihre Kartons bei Ihnen eintreffen.

    Lagerung

    - Werden meine Kartons geöffnet?
      Ihre Kartons werden in der Regel nicht geöffnet. Sollte es allerdings einmal zu dem unwahrscheinlichen Fall kommen, dass das Etikett auf dem Karton verloren geht oder unlesbar ist, müssen wir den Karton kurzzeitig öffnen, um den Zettel mit Ihren Adressdaten aus Ihrem Karton zu holen, den Sie bitte jedem Karton beifügen. Weitere Fälle entnehmen Sie bitte unseren AGB.

    - Wo werden meine Sachen gelagert und wie werden sie gesichert?
      Ihre Kartons werden in unserem zugangsbeschränkten Bereich sicher und trocken verstaut.
      Zugang zu den Lagerräumen hat ausschließlich eine begrenzte Anzahl autorisierter Personen, sowie gegebenenfalls Drittanbieter, die im Auftrag von Send & Store Dienstleistungen erbringen.


    Bezahlung

    - Wie teuer ist die Lagerung?
      Die Preise können Sie unter der Rubrik “Preise” einsehen.

    - Wann zahle ich?
      Die Bezahlperiode beginnt erst, sobald wir Ihre Kartons abgeholt haben oder Sie diese beim Paketshop abgegeben haben. Die anfallenden Kosten werden monatlich abgerechnet. Wenn Sie Ihre Kartons zurückbestellen, berechnen wir Ihnen erneut eine geringe Gebühr.


    - Wie zahle ich?
      Als Zahlungsmethode steht Ihnen die Lastschrift zur Verfügung.


    - Kann ich mein Geld zurückbekommen?
      Sie können Ihre Vertragserklärung innerhalb von 14 Tagen ohne Angabe von Gründen in Textform (z.B. Brief oder E-Mail) widerrufen.
 

    Versicherung

    - Sind meine Kartons versichert?
      Ihre Kartons sind kostenlos bis zu einem Wert von 500€ versichert. Weitere Details entnehmen Sie bitte unseren Allgemeinen Geschäftsbedingungen.
    """

