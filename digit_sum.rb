class Integer
  def digit_sum
	#Die Zahl wird in ein String umgewandelt (to_s), nun wird jeder Buchstabe (each_char) 
	#in einer Temporären-Variable (c) mit dem Befehl "map" durchlaufen. c wird dabei als
	#Integer gecastet um über "reduce" aufsummiert zu werden.
    self.to_s.each_char.map {|c| c.to_i }.reduce(:+)
  end
end

puts 'Bitte Integerzahl eingeben. Erwarte Eingabe:'
n=gets.chomp.to_i

puts 'die Quersumme betraegt: ' + n.digit_sum.to_s

=begin
aussagekräftige Testaufrufe
	Bitte Integerzahl eingeben. Erwarte Eingabe:
	12345
	die Quersumme betraegt: 15
	
	Bitte Integerzahl eingeben. Erwarte Eingabe:
	1
	die Quersumme betraegt: 1
=end


#Quelle
#erweiterung von bestehenden Klassen: "http://www.moccasoft.de/papers/ruby_tutorial/classes", abgerufen am 13.01.2015
#Berechnung der Quersumme:
	#"https://gist.github.com/bitops/1573869"
	#"http://stackoverflow.com/questions/12084507/what-does-the-map-method-do-in-ruby"
	#"http://apidock.com/ruby/Enumerable/reduce"
