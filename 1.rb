puts "hello world"

 puts "Hello, #{ARGV[0]}."

puts "what is your favorite programming language?"
name= gets.chomp
#if name == "ruby"
    #puts"You're a flatterer"
#else 
    #puts"It's time to choose the language you like"
#end

case name
   when "ruby", "Ruby"
    puts"Don't Flatter"

   when"PHP", "php"
    puts"Do you luke scripts?"
    
   when "Python", "python"
    puts"I love Simplicity"
    
   else 
    puts"This is bad"
end

puts "Input OS command"
command=gets
system ("#{command}")

puts "input ruby command" 
commandRuby=gets
puts eval (commandRuby).inspect