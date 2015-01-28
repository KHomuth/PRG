puts 'Bitte die erste Zahl eingeben. Erwarte Eingabe:'
zahl1=gets.chomp
puts 'Bitte die zweite Zahl eingeben. Erwarte Eingabe:'
zahl2=gets.chomp
puts 'Bitte die letze Zahl eingeben. Erwarte Eingabe:'
zahl3=gets.chomp

#Eingabe prüfen
if zahl1.to_i.to_s != zahl1 || zahl2.to_i.to_s != zahl2 || zahl3.to_i.to_s != zahl3
	puts 'Einer der eingegebenen Werte ist keine Zahl.'
	
	#Geordnete Reihenfolge darstellen
	else
	if zahl1 >= zahl2 && zahl1>=zahl3
		if zahl2 >= zahl3
			puts zahl3+ '<=' + zahl2 + '<=' + zahl1
			else
			puts zahl2 + '<=' + zahl3 + '<=' + zahl1
		end
		
		else
			if zahl2 >= zahl1 && zahl2>=zahl3
				if zahl1 >= zahl3
					puts zahl3 + '<=' + zahl1 + '<=' + zahl2
					else
					puts zahl1 + '<=' + zahl3 + '<=' + zahl2
				end
			else
				if zahl2 >= zahl1
					puts zahl1 + '<=' + zahl2 + '<=' + zahl3
					else
					puts zahl2 + '<=' + zahl1+ '<=' + zahl3
				end
			end
	end
end


=begin
aussagekräftige Testaufrufe
	Bitte die erste Zahl eingeben. Erwarte Eingabe:
	23
	Bitte die zweite Zahl eingeben. Erwarte Eingabe:
	1
	Bitte die letze Zahl eingeben. Erwarte Eingabe:
	12	
	1<=12<=23

	Bitte die erste Zahl eingeben. Erwarte Eingabe:
	34
	Bitte die zweite Zahl eingeben. Erwarte Eingabe:
	12
	Bitte die letze Zahl eingeben. Erwarte Eingabe:
	F
	Eine der eingegebenen Werte ist keine Zahl.
=end
