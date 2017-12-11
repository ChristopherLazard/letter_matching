def menu 
  p "Type a phrase to begin"
  p "or type 2 to exit"
  phrase = gets.strip.downcase
  case phrase
  when "2"
    exit
  else
    checker(phrase)
  end
end

def checker(phrase)
 
  counter = 1
  reveal_array = []
  phrase_array = phrase.split
 phrase_array.each do |w|
  candidate = w.length - w.split('').uniq.length
  if candidate  >= counter 
    reveal_array << w
    counter = candidate
  end
end
  double_checker(phrase, phrase_array, counter, reveal_array)
end

def double_checker(phrase, phrase_array, counter, reveal_array)
  reveal_array2 = []
  phrase_array.each do |w|
  candidate = w.length - w.split('').uniq.length
  if candidate  >= counter 
    reveal_array2 << w
    counter = candidate
  end
end
reveal(phrase, phrase_array, counter, reveal_array2)
end

def reveal(phrase, phrase_array, counter, reveal_array2)
  if  counter == 0
    puts "no duplicates try again"
    menu
  else
    puts "in the phrase '#{phrase}'"
    puts "'#{reveal_array2}' has the most repeating letters"
    menu
  end
end

menu

