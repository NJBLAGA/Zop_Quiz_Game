# Gems used through bundler.
require './test_bank.rb'
require 'colorize'
require 'artii'
# -----------------------------------------------------------------------------------------
# Player_name class.

class Player_name
    def initialize(name)
    @name = name
    end
end
# -----------------------------------------------------------------------------------------
# Question class.
class Question
    attr_accessor :content, :answer
    def initialize(content, answer)
         @content = content
         @answer = answer
    end
end
# -----------------------------------------------------------------------------------------
# Method to run the quiz through the questions array
def exe_game(questions)
    answer = ""
    score = 0
    question_number = 1
    for question in questions.shuffle
    break if score == 5
    puts "Question: ".colorize(:green,) + question_number.to_s + "."
    puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts question.content
    puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    question_number += 1
    print @name.colorize(:green,) + ": ".colorize(:green,)
    answer = gets.chomp()
            if answer == question.answer
                score += 1
                puts "Correct Answer!".colorize(:green,)
                puts @name.colorize(:green,) + "'s ".colorize(:green,)  + "Progress: ".colorize(:yellow,)  + score.to_s + " out of 10 questions."    
                puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,) 
            else
                puts "Sorry! That was not the correct answer!".colorize(:red,)
                puts "The correct answer: ".colorize(:green,) + question.answer
                puts @name.colorize(:green,) + "'s ".colorize(:green,)  + "Progress: ".colorize(:yellow,)  + score.to_s + " out of 10 questions."
                puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
            end
            end
            puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
            puts "Thank you for playing ".colorize(:green,) + @name.colorize(:green,)
            puts "Are you ready for the next level?".colorize(:light_blue,)
            puts "1. Zope me in!".colorize(:yellow,)
            puts "2. Sorry, I'm all Zoped out!".colorize(:yellow,)
            case next_level_progress = gets.chomp.to_i
            when 1
            return level_path
            when 2
            return title_scene
            end
    end
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
    puts "WELCOME TO ZOP...."
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "1: Start New Game.".colorize(:magenta,)
    puts "2: Instructions.".colorize(:magenta,)
    puts "3: Exit Game.".colorize(:magenta,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    case menu_input = gets.chomp.to_i
    when  1
        player_name_selection
    when 2
        game_instructions
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
    puts "Welcome ".colorize(:light_blue,) + @name.colorize(:green,)
    puts "Are you ready for Zop?".colorize(:light_blue,) 
    puts "Press the any key to continue..."
    print @name.colorize(:green,) + ": ".colorize(:green,)
    start_game = gets.chomp
    if start_game = " "
    return level_path
    end
end
# -----------------------------------------------------------------------------------------
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
    print @name.colorize(:green,) + ": ".colorize(:green,)
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
# Level 1
def level_one
    Artii::Base#asciify
    a = Artii::Base.new
    a.asciify('Level 1')
    system("clear")
    puts a.asciify('Level 1').colorize(:red,)
    puts "BLAGA STUDIOS™ © 2020".colorize(:light_blue,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
        questions = [
            Question.new(Q1, "a"),
            Question.new(Q2, "a"),
            Question.new(Q3, "a"),
            Question.new(Q4, "a"),
            Question.new(Q5, "b"),
            Question.new(Q6, "a"),
            Question.new(Q7, "d"),
            Question.new(Q8, "a"),
            Question.new(Q9, "c"),
            Question.new(Q10, "b"),
        ]
    return exe_game(questions) 
  end
# -----------------------------------------------------------------------------------------
# Level 2
def level_two
    Artii::Base#asciify
    a = Artii::Base.new
    a.asciify('LEVEL 2')
    system("clear")
    puts a.asciify('Level 2').colorize(:red,)
    puts "BLAGA STUDIOS™ © 2020".colorize(:light_blue,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
        questions = [
            Question.new(Q1, "a"),
            Question.new(Q2, "a"),
            Question.new(Q3, "a"),
            Question.new(Q4, "a"),
            Question.new(Q5, "b"),
            Question.new(Q6, "a"),
            Question.new(Q7, "d"),
            Question.new(Q8, "a"),
            Question.new(Q9, "c"),
            Question.new(Q10, "b"),
        ]
    return exe_game(questions) 
end
# Level 3
def level_three
    Artii::Base#asciify
    a = Artii::Base.new
    a.asciify('Level 3')
    system("clear")
    puts a.asciify('Level 3').colorize(:red,)
    puts "BLAGA STUDIOS™ © 2020".colorize(:light_blue,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
        questions = [
            Question.new(Q1, "a"),
            Question.new(Q2, "a"),
            Question.new(Q3, "a"),
            Question.new(Q4, "a"),
            Question.new(Q5, "b"),
            Question.new(Q6, "a"),
            Question.new(Q7, "d"),
            Question.new(Q8, "a"),
            Question.new(Q9, "c"),
            Question.new(Q10, "b"),
        ]
    return exe_game(questions) 
  end
# -----------------------------------------------------------------------------------------
# Instructions Screen
def game_instructions
    Artii::Base#asciify
    a = Artii::Base.new
    a.asciify('Instructions ')
    system("clear")
    puts a.asciify('Instructions .').colorize(:red,)
    puts "BLAGA STUDIOS™ © 2020".colorize(:light_blue,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "Get Zopped.".colorize(:magenta,)
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


title_scene










   




