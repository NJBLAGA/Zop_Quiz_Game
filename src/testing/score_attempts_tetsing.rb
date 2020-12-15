class Question
    attr_accessor :content, :answer, :difficulty
    def initialize(content, answer, difficulty)
         @content = content
         @answer = answer
         @difficulty = difficulty
    end
end

Q01 =<<END
In the Walt Disney film, what type of creature is Bambi?
a. Deer
b. Elephant
c. Mouse
d. Cat
END
# Answer = a
Q02 =<<END
In which country was the 1992 film ‘Strictly Ballroom’ set?
a. South Africa
b. Canada
c. New Zealand
d. Australia
END
# Answer = d
Q03 =<<END
In Australia, comradeship as an ideal is known by what name?
a. Mateship
b. Buddy System
c. Equality
d. Old school tie
END
# Answer = a
Q04 =<<END
Who is colloquially known as a ‘bookie’?
a. Bookmaker
b. Bookkeeper
c. Bookbinder
d. Bookseller
END
# Answer = a
Q05 =<<END
A huge hit in 1967, what was the name of John Farnham’s ‘cleaning lady’?
a. Josie
b. Sadie
c. Betty
d. Milly
END

questions = [
    Question.new(Q01, "a", "Novice"),
    Question.new(Q02, "d", "Novice"),
    Question.new(Q03, "a", "Novice"),
    Question.new(Q04, "a", "Novice"),
    Question.new(Q05, "b", "Novice"),
    ]


score = 0
attempts = 5

for question in questions
puts question.content
answer = gets.chomp()
if answer == question.answer
puts "------------------------------------------"
puts "match"
score += 1
score = 0
puts "------------------------------------------"
puts "Score: " + score.to_s
puts "Attempts left: " + attempts.to_s
puts "------------------------------------------"
else 
puts "------------------------------------------"
puts "no match"
attempts -= 1
score = 0
puts "------------------------------------------"
puts score.to_s
puts attempts.to_s
puts "------------------------------------------"
puts question.answer
end
end