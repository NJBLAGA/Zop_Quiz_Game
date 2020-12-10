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
# Attribute content = questions located in question bank.
# Attribute answer = correct answers to the content.
class Question
    attr_accessor :content, :answer
    def initialize(content, answer)
         @content = content
         @answer = answer
    end
end
# -----------------------------------------------------------------------------------------
# questions array.
# Each question inside the questions array has two attirubtes assigned to it.
# Content: A variable between Q1 and Q50.
# Answer: The corresponding answer to that variable.
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
# -----------------------------------------------------------------------------------------
# Method to run the quiz through the questions array
def exe_game(questions)
    answer = ""
    score = 0
    question_number = 1
    puts "What is your name?"
    @name = gets.chomp
    player_name = @name
    for question in questions.shuffle
    break if score == 5
    puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "Question: ".colorize(:green,) + question_number.to_s + "."
    puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts question.content
    puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    question_number += 1
    print player_name.colorize(:green,) + ": ".colorize(:green,)
    answer = gets.chomp()
            if answer == question.answer
                score += 1
                puts "Correct Answer!".colorize(:green,)
                puts player_name.colorize(:green,) + "'s ".colorize(:green,)  + "Progress: ".colorize(:green,)  + score.to_s + " out of 10 questions."    
                puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,) 
            else
                puts "Sorry! That was not the correct answer!".colorize(:green,)
                puts "The correct answer was: ".colorize(:green,) + question.answer
                puts player_name.colorize(:green,) + "'s ".colorize(:green,)  + "Progress:".colorize(:green,)  + score.to_s + " out of 10 questions."
                puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
            end
            end
            puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
            puts "Thank you for playing ".colorize(:green,) + player_name.colorize(:green,) + "."
end
# -----------------------------------------------------------------------------------------
# -----------------------------------------------------------------------------------------
# -----------------------------------------------------------------------------------------
# -----------------------------------------------------------------------------------------
# -----------------------------------------------------------------------------------------
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
    puts "WELCOME TO ZOP...."
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
    a.asciify('ZOP')
    system("clear")
    puts a.asciify('ZOP').colorize(:red,)
    puts "BLAGA STUDIOS™ © 2020".colorize(:light_blue,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "Press any key to continue...."
    menu_input = gets.chomp.to_i
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    exe_game(questions)
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


# exe_game(questions)
title_scene









   




