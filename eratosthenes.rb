puts 'Bitte Obergrenze eingeben: '
n=gets.chomp							

if n.to_i.to_s != n
=begin
	if n.to_i.to_s != n
	Das funktioniert nicht, wenn der Wert !vorher! als Integer gecastet wurde.  
	Also wenn ich 'n' zum Beispiel so einlese: "n=gets.chomp.to_i" oder vorher sowas wie "n=n.to_i" mache. 
	Also 'n' gleich nach der Prüfung zum Integer machen, um dies Zahl in Schleifen oder ähnliches verwenden zu können.
=end
	puts 'Keine Zahl eingegeben!'
	
	else
	c=[]
	n=n.to_i
	2.upto n do |i|					#das Array wird mit den Werten 2-n gefüllt
		c. push i
	end
							
	2.upto n do |i|									# durchläuft 2-n wobei i die Zahl ist, aus der die Vielfache gebildet werden
		0.upto n do |j|								# nämlich solange, bis jede Zahl im Array über j einmal durchlaufen ist, 
			if j>(c.length-1) || c[j]>Math.sqrt(n)	# dann i++
					break							# Abbruchbedingung: Entweder j ist größer als das Array
			else									# dies passiert dadurch das ständig Elemente entfernt werden
				c.delete((i*c[j]))					# oder der Aktuelle Wert ist größer als die Quadratwurrzel von n
			end										# Vielfaches von i wird vom Array entfernt
		end			
	end							
	puts c.join(', ')
end	
	

=begin
aussagekräftige Testaufrufe

	Bitte Obergrenze eingeben: 
	11
	2, 3, 5, 7, 11
	
	Bitte Obergrenze eingeben: 
	124
	2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113

	Bitte Obergrenze eingeben: 
	f
	Keine Zahl eingegeben!

	Bitte Obergrenze eingeben: 

	Keine Zahl eingegeben!
=end

#Alternative und schlechtere Lösung
=begin ---- Alter-Code mit 2 Arrays
a=[]
b=[]
1.upto n do |i|					#das Array wird mit den Werten 1-n gefüllt
	a. push i
end
puts a.join(', ')

2.upto n do |i|					
		0.upto n do |j|
		if ((j%i)==0 && j!=i) || j==1	#wenn j/i=0 und j und i nicht gleich 
			b << j						#--> Element ins Lösch-Array
		end
	end
end

0.upto (b.length-1) do |i|				#Abgleich Array mit Lösch-Array
	a.delete(b[i])						#endgültiges löschens der Normal Zahlen im Array
end

puts a.join(', ')
=end
