#Que pourriez-vous faire pour vous assurer que votre rédacteur rédige un mot, qu'il soit en majuscules ou en minuscules ?
#Comment pourriez-vous faire en sorte que votre programme prenne plusieurs mots distincts pour REDACT ?
#Comment créer une nouvelle chaîne de caractères expurgée et l'enregistrer comme variable, plutôt que de l'imprimer simplement sur la console ?

# Le but est d'écrire une phrase et de remplacer le mot saisi dans la phrase 

redactor = []   # array for redact to input many values
result = ""  #display result

puts "Write anything : "
text_saisie = gets.chomp 

loop do    # start loop for add many words to redact 
    puts "Word to be change ? "
    redactor << gets.chomp    #add value in redactor
    puts "Will you enter another word ? y or n "
    user_input = gets.chomp
    user_input.downcase!
    while (user_input.empty?) || (user_input != "y" && user_input != "n")   #this loop forces the user to answer with y or n
      puts "Please enter y or n only!!"
      user_input = gets.chomp
      user_input.downcase!
    end
    break if user_input == "n"      # if the answer is yes the loop is restart
end

words = text_saisie.split(" ")  # This separated input in the beginning of this program

words.each do |word|              #iteration 
  if redactor.include? word       #matching between the two lists 
    word = "REDACTED "
  else 
    word = word + " "
  end
    result += word         # the result is saved in result
end 
print result   