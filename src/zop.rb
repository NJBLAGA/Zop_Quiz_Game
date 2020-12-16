# Gems used through bundler.
require './test_bank.rb'
require './validators.rb'
require 'colorize'
require 'artii'
require 'tty-spinner'
# -----------------------------------------------------------------------------------------
# Player_name class.
class Player_name
    def initialize(name)
    @name = name
    # Initialises Player name to @name.
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
         # Initialises quiz questions to class Question.
         # Three main instance variables are agisned to question.
    end
end
# -----------------------------------------------------------------------------------------
# Method to run the quiz through the questions array
def exe_game(questions)
    answer = ""
    # Variable assigned to store players inputed answer.
    score = 0
    # Variable assigned to players score.
    attempts = 5
    # Variable assigned to players attempts.
    question_number = 1
    # Variable assigned to the current question number.
    string = "String which contains all kinds of emoji: Sub-Region flag:"
    TTY::Spinner.new
    spinner = TTY::Spinner.new("[:spinner] Fetching Next Question ...".colorize(:light_magenta,), format: :bouncing_ball)
    spinner.auto_spin # Automatic animation with default interval
    sleep(1) # Perform task
    spinner.stop("Done!".colorize(:light_magenta,)) # Stop animation
    # tty-spinner formatting.
    puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    for question in questions.shuffle
    # For loop to iterate through each question in the questions array in a random(shuffled order).
    break if score == 10
    # Loop to break if player reachs a score of 10(10 correct answers).
        puts "Question: ".colorize(:light_magenta,) + question_number.to_s 
        puts "Difficulty: ".colorize(:yellow,) + question.difficulty.to_s
        # Display the current question number and difficdulty of the question.
    puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
        puts question.content
        # Display the current question content.
    puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
        question_number += 1
        # Everytime the loop iterates through the array to a new question, question number variable increases by 1.
        print @name.colorize(:cyan,) + ": ".colorize(:cyan,)
    while
        answer = gets.chomp()
        valid = Validators.validate_correct_input(answer)
        if !valid   
        # While loop that will repeat itself as long as the user inputs an answer that is not (a,b,c,d).
    puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
        puts "Invalid Answer!".colorize(:red,)
        puts "Please enter either a,b,c,d as your answer.".colorize(:light_magenta,)
        # Prompts the user their answer was an invaild answer and what the correct input should be .
    puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
        else valid
        # While loop will break if correct input is entered.
        break
    end
end
    if answer == question.answer
    # Checks if inputed answer by player is equal to question.answer stored in array.
            score += 1
            # If true increase score counter by 1.
            puts "Correct Answer!".colorize(:green,)
            # If true display to the player it was the correct answer.
            puts @name.colorize(:yellow,) + "'s ".colorize(:yellow,)  + "Progress: ".colorize(:yellow,)  + score.to_s + " out of 10 Questions Correct."    
            puts @name.colorize(:yellow,) + "'s ".colorize(:yellow,)  + "Progress: ".colorize(:yellow,)  + attempts.to_s + " out of 5 Incorrect Answers Remaining."   
            # Display current score and attempts left to the player. 
    puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,) 
    else
            attempts -= 1
            # If false decrease score counter by 1.
            puts "Incorrect Answer!".colorize(:red,)
            # If false display to the player it was the incorrect answer.
            puts "The Correct Answer: ".colorize(:green,) + question.answer
            # If false display to the player the correct answer.
            puts @name.colorize(:yellow,) + "'s ".colorize(:yellow,) + "Progress: ".colorize(:yellow,)  + score.to_s + " out of 10 Questions Correct."    
            puts @name.colorize(:yellow,) + "'s ".colorize(:yellow,) + "Progress: ".colorize(:yellow,)  + attempts.to_s + " out of 5 Incorrect Answers Remaining."    
    puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    end
    string = "String which contains all kinds of emoji: Sub-Region flag:"
    TTY::Spinner.new
    spinner = TTY::Spinner.new("[:spinner] Fetching Next Question ...".colorize(:light_magenta,), format: :bouncing_ball)
    spinner.auto_spin # Automatic animation with default interval
    sleep(1) # Perform task
    spinner.stop("Done!".colorize(:light_magenta,)) # Stop animation
    # tty-spinner formatting.
    puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    if attempts == 0
    # If score reaches 0(5 questions answered incorrectly).
        return game_over
        # Display the game over screen to the player).
    end
    end
        return continue_screen
         # If player answers 10 questions correctly without reaching 0 attempts remianing display the continue screen to the player).
end
# -----------------------------------------------------------------------------------------

def continue_screen
            Artii::Base#asciify
            a = Artii::Base.new
            a.asciify('CONGRATULATIONS')
            system("clear")
            puts a.asciify('CONGRATULATIONS').colorize(:red,)
            puts "BLAGA STUDIOS™ © 2020".colorize(:light_blue,)
    puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
            puts @name.colorize(:cyan,)+ "!".colorize(:cyan,)
            puts "You Zopped That! ".colorize(:cyan,)
            # Display the player's name and congratulating them on beating the level).
    puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
            puts "Are you ready to continue playing Zop?".colorize(:yellow,)
            puts "1. Zop me in!".colorize(:magenta,)
            puts "2. I'm all Zoped out!".colorize(:magenta,)
            # Prompting player to play another level or stop playing).
            case next_level_progress = gets.chomp.to_i
                when 1
                return level_path
                # Returning the player to the level selection page to pick another level and continue playing.
                when 2
                return thank_you
                # Returning the player to the thank you for playing page.
            end
end
# -----------------------------------------------------------------------------------------






   




