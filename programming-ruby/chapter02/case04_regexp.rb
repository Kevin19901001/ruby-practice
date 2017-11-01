# Summary of regular expression:
linea = "Python is very interesting, I use Python to program, I like it!"

# Use 'sub(pattern, str)' to replace the first word mathes the pattern:
p linea.sub(/Python|Perl/, 'Ruby')
puts linea.sub(/Python|Perl/, 'Ruby')	# Ruby is very interesting, I use Python to program, I like it!


lineb = "Perl is very interesting, I use Perl to program, I like it!"
# Use 'gsub(pattern, str)' to replace all words match the pattern:
p lineb.gsub(/Python|Perl/, 'Ruby')
puts linea.gsub(/Python|Perl/, 'Ruby')	# Ruby is very interesting, I use Ruby to program, I like it!
