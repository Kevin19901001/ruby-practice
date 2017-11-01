# An array with 3 elements:
a = [1, 'cat', 3.14]

# Visit first element:
a[0]

# Define the last element:
a[2] = nil

# The array has been changed:
p a	# [1, "cat", nil]


# Some times, to create an array with some words is very inconvenient:
animals = ['ant', 'bee', 'cat', 'dog', 'elk']
puts animals[0]	# ant
puts animals[3]	# dog

#Ruby supplies a convenient way:
animals = %w{ant bee cat dog elk}
puts animals[0]	# ant
puts animals[3]	# dog


# Define a hash:
songs = {
	'cello'		=> 'string',
	'clarinet' 	=> 'woodwind',
	'drum' 		=> 'percussion',
	'oboe' 		=> 'woodwind',
	'trumpet' 	=> 'brass',
	'violin' 	=> 'string'
}

p songs['cello']	# string
p songs['clarinet']	# woodwind
