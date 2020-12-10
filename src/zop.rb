# Gems used through bundler.
require './menu.rb'
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
    Question.new(Q2, "d"),
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
    current_question_number
    for question in questions.shuffle
    break if score == 5
    puts question.content
            answer = gets.chomp()
            if answer == question.answer
            correct_answer
            score += 1
            else
            incorrect_answer
            end
    end
    congratulations
    question_number += 1
    end



def current_question_number
    puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "Question: ".colorize(:green,) + question_number.to_s + "."
    puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
end
 
    
def correct_answer
    puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "Correct Answer!".colorize(:green,)
    puts player_name.colorize(:green,) + "'s ".colorize(:green,)  + "Progress: ".colorize(:green,)  + score.to_s + " out of 15 questions."
    puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
end
    

def incorrect_answer
    puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "Sorry! That was not the correct answer!".colorize(:green,)
    puts "The correct answer was: ".colorize(:green,) + question.answer
    puts player_name.colorize(:green,) + "'s ".colorize(:green,)  + "Progress:".colorize(:green,)  + score.to_s + " out of 15 questions."
    puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
end

def congratulations
    puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts "Thank you for playing ".colorize(:green,) + player_name.colorize(:green,) + "."
    puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
end