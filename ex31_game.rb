#ruby ex31_game.rb

def sword
  sword = 0
end

def food
  food = 0
end

def sleep
  sleep = 0
end

def picked
  picked = 0
end

def mushroom_return
  mushroom_return ||= 0
end

def entrance
  puts "\n\n\n"
  puts "You are at the entrance to a large cave."
  puts "You see a passage leading south. What do you do?"
  puts "Do you want to go:"
  puts "1. north"
  puts "2. east"
  puts "3. south"
  puts "4. west"
  print "> "

  dir = $stdin.gets.chomp.to_i

  if dir == 3
    foyer
  elsif dir == 1 || dir = 2 || dir = 4
    puts "You run into a wall. Maybe you want to go through the passage to the south?"
    puts "try again"
    entrance
  else
    puts "You're dumb. You died."
  end

end



def foyer
  puts "\n\n\n"
  puts "You are at and entrance to a large foyer. There is a passage to the north, south, east, and west."
  puts "Do you want to go:"
  puts "1. north"
  puts "2. east"
  puts "3. south"
  puts "4. west"
  print "> "

  dir = $stdin.gets.chomp.to_i

  if dir == 1
    entrance
  elsif dir == 2
    hungry_goblin
  elsif dir == 3
    dragon
  elsif dir == 4
    mushrooms
  else
    puts "try again"
    foyer
  end

end



def hungry_goblin
  if sleep == 1
    puts "\n\n\n"
    puts "There's your sleepy lil' goblin, all snoring away. Let's leave him be and head back to the foyer..."
    foyer
  else
    puts "\n\n\n"
    puts "There's a goblin in front of you. He looks quite hungry."
    puts "He also weilds a mighty lookin' sword."
    puts "Would you like to:"
    puts "1. feed the goblin"
    puts "2. fight the goblin"
    puts "3. run from the goblin"
    print "> "

    choice = $stdin.gets.chomp.to_i
  end

  if choice == 1
      if food == 1
        puts "You remember the mushrooms you just picked."
        puts "The goblin looks sated and he quickly falls alseep. You sneak past him and steal his sword."
        puts "you walk back to the foyer"
        def sword
          sword = 1
        end
        def sleep
          sleep = 1
        end
        foyer
      else
        puts "You have nothing with which to feed the goblin...except yourself."
        puts "The goblin quickly attacks and devours you"
        exit
      end
    elsif choice == 2
      puts "You have nothing with which to fight goblin."
      puts "he quickly overcomes you with his mighty lookin' sword."
      puts "You dead."
      exit
    elsif choice == 3
      foyer
    else
      puts "try again."
      hungry_goblin
    end

end


def mushrooms
  if mushroom_return == 5
    puts "\n\n\n"
    puts "YOU HAVE DISTURBED THE GREAT AND TERRIBLE DANIELLEYSAURUS."
    puts "YOU ARE DEVOURED IN THE MOST TERRIFYING AND CUTE WAY POSSIBLE"
    puts """
    *********************
    ******YOU DIED*******
    ****(awesomely)******
    *********************
    """
    exit
  else
    if picked == 1
      puts "\n\n\n"
      puts "The cave is dark now that you picked the only source of light. It sounds like something is moving in the dark..."
      puts "It's creepy here. Let's head back to the foyer."
      mushroom_return = mushroom_return+1
      foyer
    else
      puts "\n\n\n"
      puts "You are in a big open cavern, where the only source of light is a patch of glowing mushrooms."
      puts "Would you like to:"
      puts "1. eat the mushrooms"
      puts "2. put the mushrooms in your satchel"
      puts "3. leave"

      choice = $stdin.gets.chomp.to_i
    end
  end


    if choice == 1
      puts "You feel immediately drowsy and suddenly fall asleep."
      puts "You wake up to find a small goblin with a huge sword knawing on your legs."
      puts "You quickly pass out."
      exit
    elsif choice == 2
      puts "You pick the mushrooms and place them in your satchel."
      puts "Satisfied, you head back to the foyer"
      def food
        food = 1
      end
      def picked
        picked = 1
      end
      foyer
    elsif choice == 3
      foyer
    else
      puts "try again."
      mushrooms
    end

end

def dragon
  puts "\n\n\n"
  puts "Before you sleeps a mighty lookin' dragon."
  puts "You haven't woken him yet..."
  puts "Would you like to:"
  puts "1. poke the dragon"
  puts "2. sneak past the dragon to get the treasure"
  puts "3. attack the dragon"
  puts "4. leave"

  choice = $stdin.gets.chomp.to_i

  if choice == 1
    puts "Idiot. Who pokes a sleeping dragon??"
    puts "You die in a horrible dragon fire."
    exit
  elsif choice == 2
    puts "Don't you know dragons have super hearing??"
    puts "The dragon suddenly lifts its mighty head and chomps of yours."
    puts "The last thing you remember is his horrible dragon coffee breath."
    exit
  elsif choice == 3
    if sword == 1
      puts "You quietly unsheath your mighty lookin' sword and bring it down on the dragon."
      puts "The dragon awakes only to see a flash of steel cut through the darkness before its head gets cut off..."
      puts "You grab the treasure underneath the dragon, carrying as much as can fit in your satchel."
      puts "You are vicorious!"
      puts """
      *****************
      *****YOU WIN*****
      *****************
      """
      exit
    else
      puts "You raise your fists and awake the dragon with a great 'Oy! You!'"
      puts "The dragon sleepily blinks his eyes open, looks at you, and snears."
      puts "You die a horrible dragon-fire death"
      exit
    end
  elsif choice == 4
    foyer
  else
    dragon
  end

end


entrance
