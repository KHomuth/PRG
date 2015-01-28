class Array
	def swap (index1, index2)
		b=[]		
		0.upto (self.length-1) do |i|
			if i==index1
				b.push self[index2]				
				else
					if i==index2
						b.push self[index1]					
					else
						b.push self[i]
					end
			end
		end
		return b
	end
end	

=begin
	schönere und einfachere Lösungen: :)
	
	def swap (index1, index2)
		self[index1],self[index2] = self[index2],self[index1]
	return self

	def swap (index1, index2)
		self[index1]=x
		self[index1]=self[index2]
		self[index2]=x
		return self
	end
=end	

a=['a','b','c','d']
puts a.to_s

puts 'Welche Zeichen sollen vertauscht werden. Bitte den Index-Wert angeben.'
print 'Index 1: '
index1=gets.chomp
print 'Index 2: '
index2=gets.chomp

if index1.to_i.to_s != index1 || index2.to_i.to_s != index2 || index2.to_i<0 || index1.to_i<0 || index1.to_i > (a.length-1) || index2.to_i > (a.length-1)
	puts 'Fehler:'
	puts '1 - Keine \'reine\' Zahl (vllt auch Leerzeichen)'
	puts '2 - Zahl kleiner 0'
	puts '3 - Indexwert groesser als Gesamtlaenge des Arrays'
	else
	b=a.swap(index1.to_i,index2.to_i)

	puts b.to_s
end

=begin
aussagekräftige Testaufrufe
	
	["a", "1", "1", "b"]
	Welche Zeichen sollen vertauscht werden. Bitte den Index-Wert angeben.
	Index 1: 0
	Index 2: 2
	["1", "1", "a", "b"]

	["a", "1", "1", "b"]
	Welche Zeichen sollen vertauscht werden. Bitte den Index-Wert angeben.
	Index 1: 1 
	Index 2: f (oder -2 oder 6)
	Fehler:
	1 - Keine 'reine' Zahl (vllt auch Leerzeichen)
	2 - Zahl kleiner 0
	2 - Indexwert groesser als Gesamtlaenge des Arrays

=end

