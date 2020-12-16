require './menu_system.rb'
# -----------------------------------------------------------------------------------------
# Command Line - Zop Helper
def gets
    STDIN.gets
  end

system("clear")
if ARGV.length > 0
  # handle command line arguments
      puts "Welcome to Zop Helper!".colorize(:yellow,)
   puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
   # Displays to the player a welcoming message.
   # Displays to the player the rules and instructions of Zop.
if ARGV[0] == '-r' 
    # If player types ruby zop_helper.rb -r 
    # Zop Helper it will print the rules Of Zop.
    puts "Rules:".colorize(:light_magenta,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "Choose what level of Zop you wish to play.".colorize(:cyan,)
    puts "Each level has 30 unique questions.".colorize(:cyan,)
    puts "Answer 10 questions correctly to beat the level and progress.".colorize(:cyan,)
    puts "Answer 5 questions incorrectly and game over.".colorize(:cyan,)
    puts "Question difficulty will dramatically increase as you progress through the levels. ".colorize(:cyan,)
    puts "Have fun! ".colorize(:cyan,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
elsif ARGV[0] == '-i'
    # If player types ruby zop_helper.rb -i
    # Zop Helper it will print the Instructions For Zop.
    puts "Instructions:".colorize(:light_magenta,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "During each level when a question is displayed, answer by typing either: (a,b,c,d).".colorize(:cyan,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
elsif ARGV[0] == '-d'
    # If player types ruby zop_helper.rb -d
    # Zop Helper will print the 3 levels of Zop and their difficulties.
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "Difficulty:".colorize(:light_magenta,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "Level 1: Novice & Easy questions.".colorize(:yellow,)
    puts "Level 2: Medium & Hard questions.".colorize(:yellow,)
    puts "Level 3: Expert & Zop questions.".colorize(:yellow,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    end
else 
    title_scene
    # If player types zop_helper.rb without any arguments it will run the game like normal.
end
