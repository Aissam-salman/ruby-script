redactor = []
loop do
    puts "Word to be change ? "
    redactor << gets.chomp

    puts "Will you enter another word ? y or n "
    user_input = gets.chomp
    user_input.downcase!
    break if user_input == "n"
end
puts redactor