class Array
	def index_of (v)
		e=[]							#leeres Array definieren
		0.upto (self.length-1) do |i|	#Anzahl Elemente vom übergebenen Array legt Schleifendurchläufe fest
			if self[i] == v				#falls Array-Element das gesuchte Element ist
				e << (i+1)				#bekommt das leere Array den Index der gefundenen Position +1
			end
		end
		if e.length == 0				#falls das leere Array leer bleibt bzw. Suche erfolglos
			return nil					
			
			else
				if e.length ==1			#falls das Array nur ein Element hat
					return (e[0]-1)		#wird der Index von diesem einen Element zurückgegeben
					else
						return e		#ansonsten wird das Array mit den Positionswerten zurückgegeben
				end
		end
	end
end

a=['a','1','1','b']
puts a.to_s

puts 'Nach welcher Zeichenposition soll gesucht werden?'
v=gets.chomp

b=a.index_of(v)						#Rückgabe der methode wird in Variable gespeichert, damit sie nur einmal aufgerufen werden muss

if b==nil
	puts 'Wert nicht im Array vorhanden!'
	else
		if b.to_s.length==1
			print 'Das Zeichen hat den Index: ' + b.to_s
			else
			print 'Die Zeichen befinden sich an den Positionen: ' + b.to_s
		end
end

=begin
aussagekräftige Testaufrufe
	
	["a", "1", "1", "b"]
	Nach welcher Zeichenposition soll gesucht werden?
	b
	Das Zeichen hat den Index: 3
	
	["a", "1", "1", "b"]
	Nach welcher Zeichenposition soll gesucht werden?
	1
	Die Zeichen befinden sich an den Positionen: [2, 3]

	["a", "1", "1", "b"]
	Nach welcher Zeichenposition soll gesucht werden?
	s
	Wert nicht im Array vorhanden!
=end



