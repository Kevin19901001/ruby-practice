# Installing and using ruby gems.
# gem query -rn Blue
# Command 'query' used '-n' to find any gem file matches regexp /Blue/ from the central gem repository.# Install the latest version:
# gem install -r BlueCloth

# Generating API documentation:
# gem install -r BlueCloth --rdoc

# Start gem_server:
# gem server

# require 'rubygems'
require 'bluecloth'

doc = BlueCloth::new <<MARKUP
  This is some sample [text][1]. Just learning to use [BlueCloth][1].
  Just a simple test.
  [1]: http://ruby-lang.org
MARKUP
puts doc.to_html


# Dependent on rubygems:
