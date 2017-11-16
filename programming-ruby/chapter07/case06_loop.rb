# Loop:
# 'while' and 'unless'
# As 'if' and 'unless', these two kinds of loops acn be used as modifier of sentence:
a = 1
a *= 10 while a < 100
a -= 10 until a < 100


# Range in loop:
file = File.open("ordinal")
while line = file.gets
  puts(line) if line =~ /third/ .. line =~ /fifth/
end

File.foreach("ordinal") do |line|
  if (($. == 1) || line =~ /eig/) .. (($. == 3) || line =~ /nin/)
    print line
  end
end


# Iterator:
0.upto(9) do |x|
  print x, " "
end

0.step(12, 3) do |x|
  print x, " "
end

[1, 3, 5, 7, 9].each do |e|
  print e, " "
end

File.open("ordinal").grep(/d$/) do |line|
  puts line
end


# As long as your class support method 'each', you can use 'for' loop to iterate it's object:
# For ... in ...
class Period

  def each
    yield "One"
    yield "Two"
    yield "Three"
  end

end
periods = Period.new
for period in periods
 puts period
end


# Break, Redo and Next:
while line = gets
  next if line =~ /^\s*#/	# skip comment
  break if line =~ /^END/	# stop at end
  redo if line.gsub(/'(.*?)'/){eval($1)}
end

i = 0
loop do
  i += 1
  next if i < 3
  print i
  break if i > 4
end
