# Add your code here
def say_hello(name)
  "Hi #{name}!"
end

puts "Enter your name:"
#strip removes whitespace as well as \n
users_name = gets.strip

puts say_hello(users_name)