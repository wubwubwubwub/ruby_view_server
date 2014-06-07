require 'erb'
y = "HELLO"
z = 8
x = 42

template = ERB.new("The value of x is: <%= x %>")
simple = ERB.new("if you add the two variables together you get <%= z + x %>")
yet_again = ERB.new("Can't use inline variables with this method... but <%= y %>!")

puts template.result(binding)
puts "---------"
puts simple.result(binding)
puts "---------"
puts yet_again.result(binding)
