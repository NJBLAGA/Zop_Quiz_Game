require './zop.rb'
require './test_bank.rb'
require 'colorize'
require 'artii'
require 'tty-spinner'
# -----------------------------------------------------------------------------------------
# Level 1
def level_one
    Artii::Base#asciify
    a = Artii::Base.new
    a.asciify('Level 1')
    system("clear")
    puts a.asciify('Level 1').colorize(:red,)
    puts "BLAGA STUDIOS™ © 2020".colorize(:light_blue,)
    puts "--------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    questions = [
        Question.new(Q01, "a", "Novice"),
        Question.new(Q02, "d", "Novice"),
        Question.new(Q03, "a", "Novice"),
        Question.new(Q04, "a", "Novice"),
        Question.new(Q05, "b", "Novice"),
        Question.new(Q06, "a", "Novice"),
        Question.new(Q07, "d", "Novice"),
        Question.new(Q08, "a", "Novice"),
        Question.new(Q09, "c", "Novice"),
        Question.new(Q10, "b", "Novice"),
        Question.new(Q11, "b", "Novice"),
        Question.new(Q12, "a", "Novice"),
        Question.new(Q13, "a", "Novice"),
        Question.new(Q14, "c", "Novice"),
        Question.new(Q15, "c", "Novice"),
        Question.new(Q16, "b", "Easy"),
        Question.new(Q17, "d", "Easy"),
        Question.new(Q18, "d", "Easy"),
        Question.new(Q19, "c", "Easy"),
        Question.new(Q20, "a", "Easy"),
        Question.new(Q21, "a", "Easy"),
        Question.new(Q22, "d", "Easy"),
        Question.new(Q23, "d", "Easy"),
        Question.new(Q24, "a", "Easy"),
        Question.new(Q25, "d", "Easy"),
        Question.new(Q26, "d", "Easy"),
        Question.new(Q27, "d", "Easy"),
        Question.new(Q28, "d", "Easy"),
        Question.new(Q29, "a", "Easy"),
        Question.new(Q30, "d", "Easy"),
    ]
    return exe_game(questions) 
  end
# -----------------------------------------------------------------------------------------