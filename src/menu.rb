# Gems used through bundler.
require './zop.rb'
require './test_bank.rb'
require 'colorize'
require 'artii'
# -----------------------------------------------------------------------------------------
# Title Screen/Main Menu
def title_scene
    Artii::Base#asciify
    a = Artii::Base.new
    a.asciify('ZOP')
    system("clear")
    puts a.asciify('ZOP').colorize(:red,)
    puts "BLAGA STUDIOS™ © 2020".colorize(:light_blue,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "1: Start New Game.".colorize(:magenta,)
    puts "2: Instructions.".colorize(:magenta,)
    puts "3: Exit Game.".colorize(:magenta,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "Narrator: ".colorize(:light_yellow,) + "WELCOME TO ZOP...."
    case menu_input = gets.chomp.to_i
    when  1
        return player_name_selection
    when 2
        return game_instructions
    when 3
        return game_exit
    end
end
# -----------------------------------------------------------------------------------------
# Play Name Selection Screen
def player_name_selection
    Artii::Base#asciify
    a = Artii::Base.new
    a.asciify('ZOP')
    system("clear")
    puts a.asciify('ZOP').colorize(:red,)
    puts "BLAGA STUDIOS™ © 2020".colorize(:light_blue,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "What is your name?"
    @name = gets.chomp
    player_name = @name
    puts "Press any key to continue...."
    case menu_input = gets.chomp.to_i
    when  1
    return exe_game(questions)
    when 2
    return title_scene
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,) 
    end
end
# -----------------------------------------------------------------------------------------
# Instructions Screen
def game_instructions
    Artii::Base#asciify
    a = Artii::Base.new
    a.asciify('Instructions .')
    system("clear")
    puts a.asciify('Instructions .').colorize(:red,)
    puts "BLAGA STUDIOS™ © 2020".colorize(:light_blue,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "How To survive The Nightmare....".colorize(:magenta,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts ".......".colorize(:magenta,)
    puts ".......".colorize(:magenta,)
    puts ".......".colorize(:magenta,)
    puts ".......".colorize(:magenta,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "1: Main Menu.".colorize(:magenta,)
    case exit_instructions = gets.chomp.to_i
    when  1
        system("clear")
    return title_scene
    end
end
# -----------------------------------------------------------------------------------------
# Exit The Game
def game_exit
    system("exit")
end
# -----------------------------------------------------------------------------------------    

print title_scene
