def check_age_usa (age_usa)
  if age_usa < 18
    puts "Since you are younger than 18, you can do nothing."
  elsif (age_usa >= 18 && age_usa < 21)
    puts "Since you are older than 18, you can smoke and vote!"
  elsif (age_usa >= 21 && age_usa < 25)
    puts "You can drink, smoke, and vote."
  elsif (age_usa >= 25)
    puts "You can rent a car, drink, smoke, and vote."
  end
end

def check_age_uk (age_uk)
  if (age_uk >= 18)
    puts "You can drink."
  end
end

keep_asking= true
while keep_asking == true do
  puts ("Do you want find out what you can do at your age in your country? (Y)es or (N)o")
    answer =gets.chomp.upcase
    keep_asking = false if answer == "N"
    if answer == "Y"
puts "Where are you from? (U)sa or U(K)"
  where = gets.chomp.upcase
  if where == "U"
    puts "How old are you?"
      age_usa = gets.chomp.to_i
      check_age_usa(age_usa)
  elsif where == "K"
    puts "How old are you?"
    age_uk = gets.chomp.to_i
      if age_uk < 16
        puts "You're old enough to do literally nothing."
      elsif age_uk >= 18
      check_age_uk(age_uk)
      elsif (age_uk >= 16 && age_uk < 18)
        puts "Is a legal guardian with you? (Y)es or (N)o"
        who = gets.chomp.upcase
        if who == "Y"
          puts "YOU CAN DRINK!!!"
          elsif who == "N"
            puts "Go get your guardian, and you can drink."


      end
  end
end
end
end



#If I am older than 18, I can vote.
#If I am older than 18, I can smoke.
#If I am older than 21, I can drink.
#If I am older than 25, I can rent a car.

#Modify the program to first ask your country (US or UK).
#If you are in the US, the rules stay the same.
#If you are in the UK, the rules will change slightly.
#If you are 18 you can drink
#if you are 16 or 17 ask the user if their parents are there, if the answer is yes, then they can drink
#Allow the user to change their country, age, or quit
