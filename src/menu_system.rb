require './zop.rb'
require './level_one.rb'
require './level_two.rb'
require './level_three.rb'
require './test_bank.rb'
require 'colorize'
require 'artii'
require 'tty-prompt'
require 'tty-spinner'
# -----------------------------------------------------------------------------------------
# Title Screen.
def title_scene
    Artii::Base#asciify
    a = Artii::Base.new
    a.asciify('ZOP')
    system("clear")
    puts a.asciify('ZOP').colorize(:red,)
    puts "BLAGA STUDIOS™ © 2020".colorize(:light_blue,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "WELCOME TO ZOP!".colorize(:yellow,) 
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    string = "String which contains all kinds of emoji: Sub-Region flag:"
    TTY::Spinner.new
    spinner = TTY::Spinner.new("[:spinner] Loading ...".colorize(:light_magenta,), format: :bouncing_ball)
    spinner.auto_spin # Automatic animation with default interval
    sleep(1) # Perform task
    spinner.stop("Done!".colorize(:light_magenta,)) # Stop animation
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    prompt = TTY::Prompt.new
    choices = [
        {name: 'Start New Game.', value: 1},
        {name: 'Rules Of Zop.', value: 2},
        {name: 'Exit Zop.', value: 3},
    ]
    players_input = prompt.select("Select an option:", choices)    
    case players_input
    when 1
    return player_name_selection
    when 2
    return game_rules
    when 3
    return game_exit
    end   
end
# -----------------------------------------------------------------------------------------
# Play Name Selection Screen
def player_name_selection
    Artii::Base#asciify
    a = Artii::Base.new
    a.asciify('WELCOME')
    system("clear")
    puts a.asciify('WELCOME').colorize(:red,)
    puts "BLAGA STUDIOS™ © 2020".colorize(:light_blue,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "What is your name?".colorize(:yellow,)
    name = gets.chomp
    @name = name
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    string = "String which contains all kinds of emoji: Sub-Region flag:"
    TTY::Spinner.new
    spinner = TTY::Spinner.new("[:spinner] Loading ...".colorize(:light_magenta,), format: :bouncing_ball)
    spinner.auto_spin # Automatic animation with default interval
    sleep(1) # Perform task
    spinner.stop("Done!".colorize(:light_magenta,)) # Stop animation
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "Welcome ".colorize(:cyan,) + @name.colorize(:cyan,) + "!".colorize(:cyan,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    prompt = TTY::Prompt.new
    choices = [
        {name: 'Begin.', value: 1},
        {name: 'Main Menu.', value: 2},
    ]
    players_input = prompt.select("Ready To Zop?", choices)    
    case players_input
    when 1
    return level_path
    when 2
    return title_scene
    end   
end
# -----------------------------------------------------------------------------------------
# Level Selection
def level_path
    Artii::Base#asciify
    a = Artii::Base.new
    a.asciify('Level Selection')
    system("clear")
    puts a.asciify('Level Selection').colorize(:red,)
    puts "BLAGA STUDIOS™ © 2020".colorize(:light_blue,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    string = "String which contains all kinds of emoji: Sub-Region flag:"
    TTY::Spinner.new
    spinner = TTY::Spinner.new("[:spinner] Loading ...".colorize(:light_magenta,), format: :bouncing_ball)
    spinner.auto_spin # Automatic animation with default interval
    sleep(1) # Perform task
    spinner.stop("Done!".colorize(:light_magenta,)) # Stop animation
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
   prompt = TTY::Prompt.new
    choices = [
        {name: 'Level 1.', value: 1},
        {name: 'Level 2.', value: 2},
        {name: 'Level 3.', value: 3},
        {name: 'Main Menu.', value: 4},
    ]
    players_input = prompt.select("Select Your Level:", choices)    
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    case players_input
    when 1
    return level_one
    when 2
    return level_two
    when 3
    return level_three
    when 4
    return title_scene
    end   
end
# -----------------------------------------------------------------------------------------
# Rules of Zop Screen
def game_rules
    Artii::Base#asciify
    a = Artii::Base.new
    a.asciify('RULES OF ZOP ')
    system("clear")
    puts a.asciify('RULES OF ZOP ').colorize(:red,)
    puts "BLAGA STUDIOS™ © 2020".colorize(:light_blue,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "Get Zopped...".colorize(:yellow,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    string = "String which contains all kinds of emoji: Sub-Region flag:"
    TTY::Spinner.new
    spinner = TTY::Spinner.new("[:spinner] Loading ...".colorize(:light_magenta,), format: :bouncing_ball)
    spinner.auto_spin # Automatic animation with default interval
    sleep(1) # Perform task
    spinner.stop("Done!".colorize(:light_magenta,)) # Stop animation
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "Rules:".colorize(:light_magenta,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "Choose what level of Zop you wish to play.".colorize(:cyan,)
    puts "Each level has 30 unique questions.".colorize(:cyan,)
    puts "Answer 10 questions correctly to beat the level and progress.".colorize(:cyan,)
    puts "Answer 5 questions incorrectly and game over.".colorize(:cyan,)
    puts "Question difficulty will dramatically increase as you progress through the levels. ".colorize(:cyan,)
    puts "Have fun! ".colorize(:cyan,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "Instructions:".colorize(:light_magenta,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "During each level when a question is displayed, answer by typing either: (a,b,c,d).".colorize(:cyan,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "Difficulty:".colorize(:light_magenta,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "Level 1: Novice & Easy questions.".colorize(:yellow,)
    puts "Level 2: Medium & Hard questions.".colorize(:yellow,)
    puts "Level 3: Expert & Zop questions.".colorize(:yellow,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    prompt = TTY::Prompt.new
    choices = [
        {name: 'Main Menu.', value: 1},
    ]
    players_input = prompt.select("Return To Main Menu.", choices)    
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    case players_input
    when 1
    system("clear")
    return title_scene
    end   
end
# -----------------------------------------------------------------------------------------
# Thank you screen.
def thank_you
    Artii::Base#asciify
    a = Artii::Base.new
    a.asciify('ZOP OUT')
    system("clear")
    puts a.asciify('ZOP OUT ').colorize(:red,)
    puts "BLAGA STUDIOS™ © 2020".colorize(:light_blue,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "Thank you for playing Zop! ".colorize(:yellow,) 
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    string = "String which contains all kinds of emoji: Sub-Region flag:"
    TTY::Spinner.new
    spinner = TTY::Spinner.new("[:spinner] Loading ...".colorize(:light_magenta,), format: :bouncing_ball)
    spinner.auto_spin # Automatic animation with default interval
    sleep(1) # Perform task
    spinner.stop("Done!".colorize(:light_magenta,)) # Stop animation
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "Sorry to see you go ".colorize(:cyan,) + @name.colorize(:cyan,) + "!".colorize(:cyan,)
    prompt = TTY::Prompt.new
    choices = [
        {name: 'Main Menu.', value: 1},
        {name: 'Quit Zop.', value: 2},
    ]
    players_input = prompt.select("Select An Option:", choices)    
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    case players_input
    when 1
    return title_scene
    when 2
    return game_exit
    end   
end
# -----------------------------------------------------------------------------------------
# Game Over Screen
def game_over
    Artii::Base#asciify
    a = Artii::Base.new
    a.asciify('GAM OVER')
    system("clear")
    puts a.asciify('GAME OVER ').colorize(:red,)
    puts "BLAGA STUDIOS™ © 2020".colorize(:light_blue,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "You Zoped out! ".colorize(:yellow,) 
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    string = "String which contains all kinds of emoji: Sub-Region flag:"
    TTY::Spinner.new
    spinner = TTY::Spinner.new("[:spinner] Loading ...".colorize(:light_magenta,), format: :bouncing_ball)
    spinner.auto_spin # Automatic animation with default interval
    sleep(1) # Perform task
    spinner.stop("Done!".colorize(:light_magenta,)) # Stop animation
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "Better luck next time ".colorize(:cyan,) + @name.colorize(:cyan,) + "!".colorize(:cyan,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    prompt = TTY::Prompt.new
    choices = [
        {name: 'Level Selection.', value: 1},
        {name: 'Quit Zop.', value: 2},
    ]
    players_input = prompt.select("Select An Option:", choices)    
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    case players_input
    when 1
    return level_path
    when 2
    return game_exit
    end   
end 
# -----------------------------------------------------------------------------------------  
# Exit The Game
def game_exit
    system("exit")
end
# -----------------------------------------------------------------------------------------
# Command Line - Zop Helper
def gets
    STDIN.gets
  end

system("clear")
puts "Welcome to Zop Helper!".colorize(:yellow,)
puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
puts "To view rules type the following:".colorize(:cyan,)
puts "ruby zop_helper.rb -r".colorize(:light_magenta,)
puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
if ARGV.length > 0
  # handle command line arguments
  if ARGV[0] == '-r' || ARGV[0] == '--rules'
    # print the rules menu
    puts "Choose what level of Zop you wish to play.".colorize(:cyan,)
    puts "Each level has 30 unique questions.".colorize(:cyan,)
    puts "Answer 10 questions correctly to beat the level and progress.".colorize(:cyan,)
    puts "Answer 5 questions incorrectly and game over.".colorize(:cyan,)
    puts "Question difficulty will dramatically increase as you progress through the levels. ".colorize(:cyan,)
    puts "Have fun! ".colorize(:cyan,)
  end
  else 
    title_scene
  end

