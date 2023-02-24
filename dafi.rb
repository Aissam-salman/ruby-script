print "Transform your enter in Daffy speak?  "
user_input = gets.chomp

while user_input.empty? #loop for enter a value
  print "enter a value pls  "
  user_input = gets.chomp
end

#in french : devant les voyelles 'e, i, y' et les doublons 'ae, oe' et 'sc' 'ss'
if (user_input.downcase.include? "s") || (user_input.downcase.include? "ce") || (user_input.downcase.include? "ci") || (user_input.downcase.include? "cy") || (user_input.downcase.include? "cae") || (user_input.downcase.include? "coe") || (user_input.downcase.include? "sc") || (user_input.downcase.include? "ss")
  user_input.gsub!(/[sS]/, "th") && user_input.gsub!(/[cC]/, "th")
  # Return to initial string i don't know how to do
  puts "Result : #{user_input} !"
else
  print "Nice, rien a changer dans : #{user_input} !"
end
