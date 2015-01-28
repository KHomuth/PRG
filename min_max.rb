class Array
	def max
		w=0												# w ist immer eine temporäre Variable
		0.upto (self.length-1) do |i|					# i wird auf Anzahl vorhandener Elemente iteriert
			if self[i]>w								# wenn aktuelles Array-Element größer als w
				w=self[i]								# w bekommt aktuellen Wert des Arrays
			end
		end
		return w
	end
	
	def min
		w=0												# w ist immer eine temporäre Variable
		0.upto (self.length-1) do |i|					# i wird auf Anzahl vorhandener Elemente iteriert
			if self[i]<w								# wenn aktuelles Array-Element größer als w
				w=self[i]								# w bekommt aktuellen Wert des Arrays
			end
		end
		return w
	end
	
	def index_of_max
		w=[]											# w ist immer eine temporäre Variable (Array)
		0.upto (self.length-1) do |i|					# i wird auf Anzahl vorhandener Elemente iteriert
			if self[i] == self.max						# wenn aktuelles Array-Elemnt gleich den größten Wert des Arrays
				w.push i								# hänge den Index des Array-Elemntes an w an
			end
		end
		return w
	end
	
	def index_of_min
		w=[]											# w ist immer eine temporäre Variable (Array)
		0.upto (self.length-1) do |i|					# i wird auf Anzahl vorhandener Elemente iteriert
			if self[i] == self.min						# wenn aktuelles Array-Elemnt gleich den größten Wert des Arrays
				w.push i								# hänge den Index des Array-Elemntes an w an
			end
		end
		return w
	end
end

a=[4, -5, 10, 17, -5, -6, 17,-2,3,4,5,6,30,30,-6]
puts a.join(', ')
puts "maximaler Wert:\t " + a.max.to_s
puts "minmaler Wert:\t " + a.min.to_s
puts 'Indizes der groessten Werte: ' + a.index_of_max.join(', ').to_s
puts 'Indizes der kleinsten Werte: ' + a.index_of_min.join(', ').to_s

=begin
aussagekräftige Testaufrufe
	4, -5, 10, 17, -5, -6, 17, -2, 3, 4, 5, 6, 30, 30, -6
	maximaler Wert:	 30
	minmaler Wert:	 -6
	Indizes der groessten Werte: 12, 13
	Indizes der kleinsten Werte: 5, 14
=end
