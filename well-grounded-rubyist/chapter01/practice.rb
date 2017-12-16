# Reading temperature vavle from a file, then write the tansformation result into another file:
celsius = File.read("celsius.dat").to_i
fahrenheit = (celsius * 9 / 5) + 32
fh_out = File.new("fahrenheit.dat", "w")
fh_out.puts fahrenheit
fh_out.close

