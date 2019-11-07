require 'pry'
# birthday_kids = {
#   "Timmy" => 9, 
#   "Sarah" => 6, 
#   "Amanda" => 27
# }

def happy_birthday(birthday_kids)
  # add your code snippet here!
  birthday_kids.each do |key ,value|
    puts "Happy Birthday #{key}! You are now #{value} years old!"
  end
  
end
def age_appropriate_birthday(birthday_kids)
    birthday_kids.each do |key ,value|
      
      if birthday_kids[key] <= 12 
        puts "Happy Birthday #{key}! You are now #{value} years old!"
        #binding.pry
      else
         puts "You are too old for this."
      end
    end
  end

