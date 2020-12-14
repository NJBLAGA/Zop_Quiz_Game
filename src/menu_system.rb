require './zop.rb'
require './level_one.rb'
require './level_two.rb'
require './level_three.rb'
require './test_bank.rb'
require 'colorize'
require 'artii'
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
    puts "WELCOME TO ZOP....".colorize(:yellow,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "1: Start New Game.".colorize(:magenta,)
    puts "2: Rules Of Zop.".colorize(:magenta,)
    puts "3: Exit Game.".colorize(:magenta,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    case menu_input = gets.chomp.to_i
    when  1
        player_name_selection
    when 2
        game_rules
    when 3
        game_exit
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
    puts "Welcome ".colorize(:cyan,) + @name.colorize(:cyan,) + "!".colorize(:cyan,)
    puts "Are you ready to Zop!".colorize(:cyan,) 
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "Press any key to continue...".colorize(:magenta,)
    print @name.colorize(:cyan,) + ": ".colorize(:cyan,)
    start_game = gets.chomp
    if start_game = " "
    return level_path
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
    puts "1: Level 1".colorize(:magenta,)
    puts "2: Level 2".colorize(:magenta,)
    puts "3: Level 3".colorize(:magenta,)
    puts "4: Main Menu".colorize(:magenta,)
    print @name.colorize(:cyan,) + ": ".colorize(:cyan,)
    case menu_input = gets.chomp.to_i
    when  1   
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
    puts "Get Zopped.".colorize(:yellow,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "Choose what level of Zop you wish to play.".colorize(:cyan,)
    puts "Each level has 30 unique questions.".colorize(:cyan,)
    puts "Answer 10 questions correctly to beat the level and progress.".colorize(:cyan,)
    puts "Answer 5 questions incorrectly and game over.".colorize(:cyan,)
    puts "Question difficulty will dramatically increase as you progress through the levels. ".colorize(:cyan,)
    puts "Have fun! ".colorize(:cyan,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "Level 1: Novice & Easy questions.".colorize(:yellow,)
    puts "Level 2: Medium & Hard questions.".colorize(:yellow,)
    puts "Level 3: Expert & Zop questions.".colorize(:yellow,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "1: Main Menu.".colorize(:magenta,)
    case exit_instructions = gets.chomp.to_i
    when  1
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
    puts "Sorry to see you go ".colorize(:cyan,) + @name.colorize(:cyan,) + "!".colorize(:cyan,)
    puts "What would you like to do now?".colorize(:yellow,)
    puts "1. Main Menu.".colorize(:magenta,)
    puts "2. Quit Zop.".colorize(:magenta,)
    print @name.colorize(:cyan,) + ": ".colorize(:cyan,)
        case next_level_progress = gets.chomp.to_i
        when 1
        return title_scene
        when 2
        system("exit")
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
    puts "Better luck next time ".colorize(:cyan,) + @name.colorize(:cyan,) + "!".colorize(:cyan,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "What would you like to do now?".colorize(:yellow,)
    puts "1. Level Selection.".colorize(:magenta,)
    puts "2. Quit Zop.".colorize(:magenta,)
    print @name.colorize(:cyan,) + ": ".colorize(:cyan,)
        case next_level_progress = gets.chomp.to_i
        when 1
        return level_path
        when 2
        system("exit")
        end
end
# -----------------------------------------------------------------------------------------  
# Exit The Game
def game_exit
    system("exit")
end
# -----------------------------------------------------------------------------------------  
# Exe Game - Zop ////////////
# -----------------------------------------------------------------------------------------  
title_scene
# -----------------------------------------------------------------------------------------  



