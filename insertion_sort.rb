class Array
  def insertion_sort
	#Upto zählt die Laufvariable i mit den Parametern 1 (1.upto) bis Arraylänge-1 hoch
    1.upto(length - 1) do |i| 
      value = self[i] 						#fängt mit der zweiten Position im Array an und überträgt sie in eine temporäre Variable
      j = i - 1								#zweite Laufzeitvariable fängt mit den Wert 0 an und ist immer ein niedriger als i
      while j >= 0 and self[j] > value   	#Solange der erste/davorherige Wert des Arrays größer ist, als die temporäre Variable
        self[j+1] = self[j]					#Schreibe kleineren Wert ein Feld weiter nach vorne ins Array	
        j -= 1  							#verringern der Laufzeitvariable j um 1
      end
      self[j+1] = value 					#schreibe größeren Wert dorthin, wo vorher der kleinere Wert gestanden hat
    end
    self
  end
end

p ary = [7,6,5,9,8,4,3,1,2,0]
puts 'insertion_sort: '
p ary.insertion_sort
puts
p ary = ["c","d","a","v","e","l","y","z","o","p"]
puts 'insertion_sort: '
p ary.insertion_sort
puts
p ary = ["c","D","d","v","A","a","y","z","o","p"]
puts 'insertion_sort: '
p ary.insertion_sort

=begin
aussagekräftige Testaufrufe
	[7, 6, 5, 9, 8, 4, 3, 1, 2, 0]
	insertion_sort: 
	[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

	["c", "d", "a", "v", "e", "l", "y", "z", "o", "p"]
	insertion_sort: 
	["a", "c", "d", "e", "l", "o", "p", "v", "y", "z"]

	["c", "D", "d", "v", "A", "a", "y", "z", "o", "p"]
	insertion_sort: 
	["A", "D", "a", "c", "d", "o", "p", "v", "y", "z"]
=end

#Quellen
#insertion_sort: "http://rosettacode.org/wiki/Sorting_algorithms/Insertion_sort#Ruby", abgerufen am 13.01.2015
#upto: "http://stackoverflow.com/questions/9728075/upto-method-in-ruby", abgerufen am 13.01.2015
#-=-Syntax: http://stackoverflow.com/questions/10022524/what-does-plus-equals-mean-in-ruby, abgerufen am 13.01.2015
