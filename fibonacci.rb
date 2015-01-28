def fib lim
	if lim<=0
		return 0
	else
		a=[1,1]
		wert=[1,1]
		while a.last.to_i + wert[1].to_i <lim
				wert[0]=wert[0]+wert[1]	
				a.push wert[0] 
				wert[0],wert[1]=wert[1],wert[0]			
		end	
		a.push lim
		return a
	end
end

#####Start####
puts 'Bitte Obergrenze der Fibonacci Folge eingeben. Erwarte Eingabe:'
lim=gets.chomp.to_i

#Prüfen auf 0 und Aufruf der Methode
if fib(lim)==0
	puts 0	
	else
		puts fib(lim).join(', ')
end

=begin
aussagekräftige Testaufrufe
	Bitte Obergrenze der Fibonacci Folge eingeben. Erwarte Eingabe:
	89
	1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89
	
	Bitte Obergrenze der Fibonacci Folge eingeben. Erwarte Eingabe:
	0
	0
=end
