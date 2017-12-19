# load demo:
puts "This is the first program file."
$: << "."
require "loadee.rb"
puts "And back again to the first file."
