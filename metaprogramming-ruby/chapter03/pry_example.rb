require 'pry'

pry = Pry.new
pry.memory_size = 101
p pry.memory_size
p pry.quiet?

# pry.refresh({:memory_size => 99, :quiet => true})
# p pry.memory_size
# p pry.quiet?
