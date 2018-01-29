require 'builder'

xml = Builder::XmlMarkup.new(:target => STDOUT, :INDENT => 2)

xml.coder{
  xml.name 'matsumoto', :nickname => 'matz'
  xml.language 'ruby'
}
