class Integer
	def factorial
		if self==0
		return 0
		else
			i=2
			a=1
			while i <= self
				a=a*i
				i=i+1
			end
			return a
		end
	end
end

puts 'Bitte Integerzahl eingeben. Erwarte Eingabe:'
n=gets.chomp.to_i
puts n.to_s + '! = ' + n.factorial.to_s

=begin
aussagekräftige Testaufrufe
	Bitte Integerzahl eingeben. Erwarte Eingabe:
	0
	0! = 0
	
	Bitte Integerzahl eingeben. Erwarte Eingabe:
	1
	1! = 1
	
	Bitte Integerzahl eingeben. Erwarte Eingabe:
	2
	2! = 2
	
	Bitte Integerzahl eingeben. Erwarte Eingabe:
	3
	3! = 6
	
	Bitte Integerzahl eingeben. Erwarte Eingabe:
	5
	5! = 120
=end
