def xmastree h
	tree=[]	
	(h).times do
		tree.insert(0,' ')
	end
	tree.insert(-1,'*')
	puts tree.join
	
	1.upto (h-1) do |i|
		tree.insert(-1,'*','*')
		tree.shift
		puts tree.join		
	end
	puts '#'.center(2*h+1)	
end

puts 'Wie hoch soll der Baum sein?'

h=gets.chomp
if h.to_i.to_s != h
	puts 'Fehler: Keine Zahl eingegeben.'
	else
	xmastree(h.to_i)
end

=begin
aussagekräftige Testaufrufe

Wie hoch soll der Baum sein?
7
       *
      ***
     *****
    *******
   *********
  ***********
 *************
       # 
       
Wie hoch soll der Baum sein?     
3
   *
  ***
 *****
   # 

Wie hoch soll der Baum sein?
d
Keine Zahl eingegeben.
=end

#Quelle
#erstes Element in einem Array löschen
#"http://stackoverflow.com/questions/3615700/ruby-what-is-the-easiest-way-to-remove-the-first-element-from-an-array"
#abgerufen am 14.01.2015
