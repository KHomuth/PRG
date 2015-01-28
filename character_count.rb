puts 'Bitte Textzeile eingeben'
zeile=gets.chomp.to_s.downcase.split("").sort
[",",".",":","?","!","(",")","[","]","{","}","-","\"","\'"," "].each{|v| zeile.delete(v)}
j=1												
n=0							
puts '| Buchstabe | Anzahl |' 	
puts '|-----------|--------|' 				
0.upto(zeile.length - 1) do |i| 				
	if zeile[i]==zeile[i+1]																		
			j += 1								
			else								
			puts '|     ' + zeile[n].to_s + '     |   ' + j.to_s + '    |' 
			puts '|-----------|--------|' 
			n += j								
			j=1									
	end	
end	








#ganz unten die kommentierte Version
=begin
aussagekräftige Testaufrufe

	Bitte Textzeile eingeben
	Dies ist ein test um verschiedene Sonderzeichen aus dem Array zu löschen. Zum Beispiel ",,,,....??!!!()[]{}'''"
	| Buchstabe | Anzahl |
	|-----------|--------|
	| a         | 3      |
	|-----------|--------|
	| b         | 1      |
	|-----------|--------|
	| c         | 3      |
	|-----------|--------|
	| d         | 4      |
	|-----------|--------|	
	| e         | 14      |
	|-----------|--------|
	| h         | 3      |	
	|-----------|--------|
	| i         | 7      |
	|-----------|--------|
	| l         | 2      |
	|-----------|--------|
	| m         | 3      |
	|-----------|--------|
	| n         | 5      |
	|-----------|--------|
	| o         | 1      |
	|-----------|--------|
	| p         | 1      |
	|-----------|--------|
	| r         | 4      |
	|-----------|--------|
	| s         | 8      |
	|-----------|--------|
	| t         | 3      |
	|-----------|--------|
	| u         | 4      |
	|-----------|--------|
	| v         | 1      |
	|-----------|--------|
	| y         | 1      |
	|-----------|--------|
	| z         | 3      |
	|-----------|--------|
	| ö         | 1      |
	|-----------|--------|
		
	Bitte Textzeile eingeben
	aAaYYYYööqqqqq 
	| Buchstabe | Anzahl |
	|-----------|--------|
	| a         | 3      |
	|-----------|--------|
	| q         | 5      |
	|-----------|--------|
	| y         | 4      |
	|-----------|--------|
	| ö         | 2      |
	|-----------|--------|
=end

#Quellen
#löschen von mehreren Zeichen aus einem Array:
#http://stackoverflow.com/questions/3677946/deleting-multiple-key-and-value-pairs-from-hash-in-rails, abgerufen am 14.01.2015

=begin
puts 'Bitte Textzeile eingeben'
zeile=gets.chomp.to_s.downcase.split("").sort	#der Satz wird sofort beim einlesen als String gespeichert
												#alle Großbuchstaben zu Kleinbuchstaben geändert
												#jedes Zeichen des String als einzelnes Array-Element verpackt
												#und am ende sortiert
												
#es werden alle unerwünschten Elemente aus dem Array entfernt
[",",".","?","!","(",")","[","]","{","}","-","\"","\'"," "].each{|v| zeile.delete(v)}
#diese Variante ist kürzer, aber da das Leerzeichen das Trennzeichen ist, war es mir nicht möglich diese Form zu verwenden
# %w", . ? ! ( ) [ ] { } - \" \'".each{|v| zeile.delete(v)}

j=1												#Iterator j
n=0												#Iterator n
puts '| Buchstabe | Anzahl |' 	
puts '|-----------|--------|'
0.upto(zeile.length - 1) do |i| 				#Iterator i, jedes Array-Element wird einmal durchlaufen
	if zeile[i]==zeile[i+1]						#wenn das darauffolgende Element, das Gleiche wie das aktuelle ist												
			j += 1								#wird j einen hochgezählt
			else								
			puts 'Der Buchstabe ' + zeile[n].to_s + ' kommt ' + j.to_s + ' mal vor.' #Ausgabe des gezählten Zeichens
			n += j								#Position des nächstesn Zeichens wird festgelegt
			j=1									#Zähler auf 1 setzen für das nächste Zeichen, welches gezählt wird
	end	
end	
=end
