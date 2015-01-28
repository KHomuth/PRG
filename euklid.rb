puts 'Bitte Zahl 1 und 2 eingeben: '
print 'Zahl 1: '
a=gets.chomp
c=a.to_i
print 'Zahl 2: '
b=gets.chomp
d=b.to_i
r=0

if a.to_i.to_s != a || b.to_i.to_s != b
	puts 'Einer der eingegebenen Werte ist keine Zahl!'
	else
	a=a.to_i
	b=b.to_i	
	
	#Variante nach Aufgabenstellung
	while c%d!=0
		r=c%d
		c=d
		d=r
	end
	puts 'Nach Aufgabenstellung - GgT = ' + d.to_s

	#Variante Wikipedia
	while b!=0
		r=a%b
		a=b
		b=r
	end
	puts 'Wikipedia Variante - GgT = ' + a.to_s
end

=begin
Der einzige Unterschied zwischen den beiden Varianten besteht darin, 
dass die Wikipedia Variante ein Tick schneller sein müsste,
da dort nicht gerechnet und verglichen werden muss, sondern nur verglichen

	Bitte Zahl 1 und 2 eingeben: 
	Zahl 1: 27
	Zahl 2: 90
	Nach Aufgabenstellung - GgT = 9
	Wikipedia Variante - GgT = 9
		
	Bitte Zahl 1 und 2 eingeben: 
	Zahl 1: 87685
	Zahl 2: 342 
	Nach Aufgabenstellung - GgT = 19
	Wikipedia Variante - GgT = 19

	Bitte Zahl 1 und 2 eingeben: 
	Zahl 1: 23
	Zahl 2: f
	Einer der eingegebenen Werte ist keine Zahl!
=end

#Quelle
#Euklid mit Modulo: "http://de.wikipedia.org/wiki/Euklidischer_Algorithmus", abgerufen am 18.01.2015

