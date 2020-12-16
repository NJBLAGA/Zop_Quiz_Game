# Testing Question class.
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
# Testing Variable Question Bank.
TQ1 =<<END
In the Walt Disney film, what type of creature is Bambi?
a. Deer
b. Elephant
c. Mouse
d. Cat
END
# Answer = a
TQ2 =<<END
In which country was the 1992 film ‘Strictly Ballroom’ set?
a. South Africa
b. Canada
c. New Zealand
d. Australia
END
# Answer = d
TQ3 =<<END
In Australia, comradeship as an ideal is known by what name?
a. Mateship
b. Buddy System
c. Equality
d. Old school tie
END
# Answer = a
TQ4 =<<END
Who is colloquially known as a ‘bookie’?
a. Bookmaker
b. Bookkeeper
c. Bookbinder
d. Bookseller
END
# Answer = a
TQ5 =<<END
A huge hit in 1967, what was the name of John Farnham’s ‘cleaning lady’?
a. Josie
b. Sadie
c. Betty
d. Milly
END
# -----------------------------------------------------------------------------------------
# Testing questions array
questions = [
    Question.new(TQ1, "a", "Novice"),
    Question.new(TQ2, "d", "Novice"),
    Question.new(TQ3, "a", "Novice"),
    Question.new(TQ4, "a", "Novice"),
    Question.new(TQ5, "b", "Novice"),
    ]
# Testing questions array with 5 unique Questions.
# Each Question in the array has an assigned variable from the question bank alongside correct answer and corresponding difficulty. 
# Using the above array, level 1 returns the exe_game(questions) method and runs the quiz using the above questions.
# -----------------------------------------------------------------------------------------
# Variables for testing: score and attempts.
score = 0
attempts = 5
# -----------------------------------------------------------------------------------------
for question in questions
# Run a for loop and iterate through all 5 Question elements in the questions array.
    puts question.content
    # Prompt user with a question.
    answer = gets.chomp()
    # Gets is used to to obtain inputed answer.
    if answer == question.answer
    # If statement is used to check inputed answer == question.answer stored in the array .
        puts "------------------------------------------"
        puts "match"
        # If true and answer == question.answer display match.
        score += 1
        # If true and answer == question.answer add 1 to score variable.
        puts "------------------------------------------"
        puts "Score: " + score.to_s
        # Display current score.
        puts "Attempts left: " + attempts.to_s
        # Display current attempts remaining.
        puts "------------------------------------------"
    else 
        puts "------------------------------------------"
        puts "no match"
        # If false and answer does not == question.answer display no match.
        attempts -= 1
        # If false and answer does not == question.answer subtract 1 from attempt variable.
        puts "------------------------------------------"
        puts "Score: " + score.to_s
        # Display current score.
        puts "Attempts left: " + attempts.to_s
        # Display current attempts remaining.
        puts "------------------------------------------"
        puts question.answer
        # If false and answer does not == question.answer display correct answer to the question.
    end
end



