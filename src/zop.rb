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
    attr_accessor :content, :answer, :difficulty
    def initialize(content, answer, difficulty)
         @content = content
         @answer = answer
         @difficulty = difficulty
    end
end
# -----------------------------------------------------------------------------------------
# Method to run the quiz through the questions array
def exe_game(questions)
    answer = ""
    score = 0
    attempts = 5
    question_number = 1
    for question in questions.shuffle
    break if score == 10
    puts "Question: ".colorize(:magenta,) + question_number.to_s 
    puts "Difficulty: ".colorize(:yellow,) + question.difficulty.to_s
    puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    puts question.content
    puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    question_number += 1
    print @name.colorize(:cyan,) + ": ".colorize(:cyan,)
    answer = gets.chomp()
            if answer == question.answer
                score += 1
                puts "Correct Answer!".colorize(:green,)
                puts @name.colorize(:yellow,) + "'s ".colorize(:yellow,)  + "Progress: ".colorize(:yellow,)  + score.to_s + " out of 10 questions correct."    
                puts @name.colorize(:yellow,) + "'s ".colorize(:yellow,)  + "Progress: ".colorize(:yellow,)  + attempts.to_s + " out of 5 incorrect answers remaining."    
                puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,) 
            else
                attempts -= 1
                puts "Incorrect Answer!".colorize(:red,)
                puts "The Correct answer: ".colorize(:green,) + question.answer
                puts @name.colorize(:yellow,) + "'s ".colorize(:yellow,) + "Progress: ".colorize(:yellow,)  + score.to_s + " out of 10 questions correct."    
                puts @name.colorize(:yellow,) + "'s ".colorize(:yellow,) + "Progress: ".colorize(:yellow,)  + attempts.to_s + " out of 5 incorrect answers remaining."    
                puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
            end
                if attempts == 0
                return game_over
                end
    end
            return contine_screen
end
# -----------------------------------------------------------------------------------------

def contine_screen
            Artii::Base#asciify
            a = Artii::Base.new
            a.asciify('CONGRATULATIONS')
            system("clear")
            puts a.asciify('CONGRATULATIONS').colorize(:red,)
            puts "BLAGA STUDIOS™ © 2020".colorize(:light_blue,)
            puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
            puts @name.colorize(:cyan,)+ "!".colorize(:cyan,)
            puts "You Zopped that! ".colorize(:cyan,)
            puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
            puts "Are you ready to continue playing Zop?".colorize(:yellow,)
            puts "1. Zop me in!".colorize(:magenta,)
            puts "2. I'm all Zoped out!".colorize(:magenta,)
            case next_level_progress = gets.chomp.to_i
            when 1
            return level_path
            when 2
            return thank_you
            end
end






   




