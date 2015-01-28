#Schaltjahr ermitteln

puts 'Bitte das zu pruefende Jahr eingeben. Erwarte Eingabe:'
jahr = gets.chomp

#Eingabe prüfen
if jahr.to_i.to_s != jahr
	puts jahr + ' ist keine Zahl.'

	else
#Auf Schaltjahr prüfen
		if jahr.to_i%400==0 || (jahr.to_i%100!=0 && jahr.to_i%4==0)
		puts jahr + ' ist ein Schaltjahr.'

		else
		puts jahr + ' ist kein Schaltjahr.'
	end
end

=begin
aussagekräftige Testaufrufe
	Bitte das zu pruefende Jahr eingeben. Erwarte Eingabe:
	1996
	1996 ist ein Schaltjahr.

	Bitte das zu pruefende Jahr eingeben. Erwarte Eingabe:
	2007
	2007 ist kein Schaltjahr.

	Bitte das zu pruefende Jahr eingeben. Erwarte Eingabe:
	123d
	123d ist keine Zahl.
=end

#Quelle
#Prüfen auf Integer: "http://stackoverflow.com/questions/1235863/test-if-a-string-is-basically-an-integer-in-quotes-using-ruby", abgerufen am 12.01.2015

