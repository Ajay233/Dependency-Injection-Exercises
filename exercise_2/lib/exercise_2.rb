#Amend the following classes to be testable in isolation, then write the tests for them.


class Greeter
  def greet
    puts "What is your name?"
    name = Kernel.gets.chomp
    puts "Hello, #{name}"
  end
end
