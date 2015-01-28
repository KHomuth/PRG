def shuffle_me(a)
	(a.size).times do |i|			#durchläuft 49 mal die Schleife und iteriert dabei i
		j = rand(a.size-1)			#die Variable j erhält einen Zufallswert 0-48
		a[i], a[j] = a[j], a[i]		#Die Array Positionen werden per Index i und j vertauscht
	end
	return a
end

a=[]								#initialisierung des Arrays
1.upto 49 do |i|					#das Array wird mit den Werten 1-49 gefüllt
	a. push i
end
puts '1 - 49 unsortiert'
puts a.join(', ')		
puts
puts '1 - 49 gemischt'				
puts shuffle_me(a).join(', ')		#Methodenaufruf um das Array zu mischen
puts								
puts 'Die gezogenen Lottozahlen sind:'
0.upto 5 do |i|						
	puts (i+1).to_s + '. Zahl: ' + a[i].to_s		#Ausgabe der ersten 6 Elemente des Arrays über eine Schleife
end

=begin
aussagekräftige Testaufrufe
	Aufruf 1
	1 - 49 unsortiert
	1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49

	1 - 49 gemischt
	19, 49, 14, 11, 35, 1, 45, 13, 20, 6, 46, 15, 2, 44, 21, 28, 24, 29, 41, 18, 32, 5, 33, 30, 3, 27, 37, 48, 42, 8, 16, 17, 25, 47, 26, 38, 43, 34, 40, 4, 23, 12, 31, 10, 39, 36, 9, 22, 7

	Die gezogenen Lottozahlen sind:
	1. Zahl: 19
	2. Zahl: 49
	3. Zahl: 14
	4. Zahl: 11
	5. Zahl: 35
	6. Zahl: 1
	
	Aufruf 2
	1 - 49 unsortiert
	1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49

	1 - 49 gemischt
	10, 45, 39, 47, 13, 33, 12, 36, 38, 16, 42, 8, 27, 11, 5, 34, 19, 1, 30, 14, 23, 40, 48, 20, 18, 25, 28, 17, 21, 6, 46, 26, 37, 7, 43, 24, 44, 15, 41, 2, 35, 3, 49, 31, 22, 32, 4, 9, 29
	
	Die gezogenen Lottozahlen sind:
	1. Zahl: 10
	2. Zahl: 45
	3. Zahl: 39
	4. Zahl: 47
	5. Zahl: 13
	6. Zahl: 33
=end

#Quelle
#Shuffle Funktion:"http://stackoverflow.com/questions/5060660/how-can-i-shuffle-an-array-hash-in-ruby", abgerufen am 17.01.2015
