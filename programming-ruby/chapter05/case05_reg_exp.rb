# Use constructor or regexp literal can create Regexp object:
a = Regexp.new('^\s*[a-z]')
p a

b = /^\s*[a-z]/
p b

c = %r{^\s*[a-z]}
p c


# Once a Regexp object has been created, 'Regexp#match' and '=~' or '!~' can be use to match a string:
name = "Fats Waller"
p name =~ /a/	# 1
p name =~ /z/	# nil
p /a/ =~ name	# 1

# Difference between '$`', '$&' and '$'':
def show_regexp(a, re)
  if a =~ re
    "#{$`}<<#{$&}>>#{$'}"
  else
    "no match"
  end
end

p show_regexp("Very interesting", /t/)		# Very in<<t>>ing
p show_regexp("Fats Waller", /a/)		# F<<a>>ts Waller
p show_regexp("Fats Waller", /ll/)		# Fats Wa<<ll>er
p show_regexp("Fats Waller", /z/)		# no match


# In patterns, except '.', '|', '(', ')', '[', ']', '{', '}', '+', '\', '$', '*', '^', '?', other words all match themselves.
p show_regexp("kangaroo", /angar/)		# k<<angar>>oo
p show_regexp("!@%&-_=", /%&/)			# !@<<%&>>-_=


# '^' and '$':
p show_regexp("This is\nthe time", /^the/)	# This is\n<<the>> time
p show_regexp("This is\nthe time", /is$/)	# This <<is>>\nthe time


# '\A':
p show_regexp("This is\nthe time", /\AThis/)	# <<This>> is\nthe time
p show_regexp("This is\nthe time", /\Athe/)	# no match


# '\b' and '\B':
p show_regexp("This is\nthe time", /\bis/)	# This <<is>>\nthe time
p show_regexp("This is\nthe time", /\Bis/)      # Th<<is>> is\nthe time


# Characters:
p show_regexp("Price $12", /[aeiou]/)		# Pr<<i>>ce $12
p show_regexp("Price $12", /\s/)		# Price<< >>$12
p show_regexp("Price $12", /[[:digit:]]/)	# Price $<<1>>2
p show_regexp("Price $12", /[[:space:]]/)	# Price<< >>$12
p show_regexp("Price $12", /[[:punct:]aeiou]/)	# Pr<<i>>ce $12


# c1-c2
s = "see [Design Patterns-page 123]"
p show_regexp(s, /[A-F]/)			# see [<<D>>esign Patterns-page 123]
p show_regexp(s, /[A-Fa-f]/)			# s<<e>>e [<<D>>esign Patterns-page 123]
p show_regexp(s, /[0-9]/)			# see [Design Patterns-page <<1>>23]
p show_regexp(s, /[0-9][0-9]/)			# see [Design Patterns-page <<1>><<2>>3]


# ']' and '-'
p show_regexp(s, /[]]/)				# see [Design Patterns-page 123<<]>>
p show_regexp(s, /[-]/)				# see [Design Patterns<<->>page 123]
p show_regexp(s, /[^a-z]/)			# see<< >>[Design Patterns-page 123]
p show_regexp(s, /[^a-z\s]/)			# see <<[>>Design Patterns-page 123]


# 'greedy' mode:
t = "The moon is made of cheese"
p show_regexp(t, /\w+/)				# <<The>> moon is made of cheese
p show_regexp(t, /\s.*\s/)			# The<< moon is made of >>cheese
p show_regexp(t, /\s.*?\s/)			# The<< moon >>is made of cheese
p show_regexp(t, /[aeiou]{2, 99}/)		# no match, why?
p show_regexp(t, /mo?o/)			# The <<moo>>n is made of cheese


# '|':
r = "red ball blue sky"
p show_regexp(r, /d|e/)				# r<<e>>d ball blue sky
p show_regexp(r, /al|lu/)			# red b<<al>>l blue sky
p show_regexp(r, /red ball|angry sky/)		# <<red ball>> blue sky


# group:
"12:50am" =~ /(\d\d):(\d\d)(..)/
p "Hour is #$1, minute is #$2"
"12:50am" =~ /((\d\d):(\d\d))(..)/
p "Time is #$1"
p "Hour is #$2, minute is #$3"
p "AM/PM is #$4"


# match duplicated letter:
p show_regexp('He said "Hello"', /(\w)\1/)	# He said "He<<ll>>o"
p show_regexp("Mississippi", /(\w+)\1/)		# M<<ississ>>ippi


# Use backward quotation to match the boundary symbol:
puts show_regexp('He said "Hello"', /(["']).*?\1/)	# He said <<"Hello">>
puts show_regexp("He said 'Hello'", /(["']).*?\1/)	# He said <<'Hello'>>


# 'String#sub' and 'String#gsub':
s = "the quick brown fox"
puts s.sub(/[aeiou]/, "*")			# th* quick brown fox
puts s.gsub(/[aeiou]/, "*")			# th* q**ck br*wn f*x
puts s.sub(/\s\S+/, "")				# the brown fox
puts s.gsub(/\s\S+/, "")			# the
puts s.sub(/^./){|match| match.upcase}		# The quick brown fox
puts s.gsub(/[aeiou]/){|vowel| vowel.upcase}	# thE qUIck brOwn fOx
puts "fred:smith".sub(/(\w+):(\w+)/, '\2, \1')	# smith, fred. Why the single quote display a mess code, but single quote display the normal?
