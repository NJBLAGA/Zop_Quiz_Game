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
    Question.new(TQ4, "c", "Novice"),
    Question.new(TQ5, "b", "Novice"),
    ]
# Testing questions array with 5 unique Questions.
# Each Question in the array has an assigned variable from the question bank alongside correct answer and corresponding difficulty. 
# Using the above array, level 1 returns the exe_game(questions) method and runs the quiz using the above questions.

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
        puts "------------------------------------------"
        else 
        puts "------------------------------------------"
        puts "no match"
        # If false and answer does not == question.answer display no match.
        puts "------------------------------------------"
        puts question.answer
        # If false and answer does not == question.answer display correct answer to the question.
    end
end

# Test Cases:

# 1. Inputed the following:
#  "a", "b", "c" "d"
# Returned  both 'match' and 'no match' results for various  questions.
# Test results were unaffected by the implementation of a validator.

# 2. Inputed the following:
# "  "
# Returned 'no match' result for every question.
# Implementation of a validator gave these test inputs a invalid answer response, pormpting the user to try agian.
# This solved the issue of any error occuring during the verification of the player's inputed answer.  

# 3. Inputed the following:
# "1", "2", "3", "4",
# Returned 'no match' result for every question.
# Implementation of a validator gave these test inputs a invalid answer response, pormpting the user to try agian.
# This solved the issue of any error occuring during the verification of the player's inputed answer. 