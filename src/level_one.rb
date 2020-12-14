require './zop.rb'
require './test_bank.rb'
require 'colorize'
require 'artii'
# -----------------------------------------------------------------------------------------
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
        Question.new(Q01, "a", "Novice"),
        Question.new(Q02, "a", "Novice"),
        Question.new(Q03, "a", "Novice"),
        Question.new(Q04, "a", "Novice"),
        Question.new(Q05, "b", "Novice"),
        Question.new(Q06, "a", "Novice"),
        Question.new(Q07, "d", "Novice"),
        Question.new(Q08, "a", "Novice"),
        Question.new(Q09, "c", "Novice"),
        Question.new(Q10, "b", "Novice"),
        Question.new(Q11, "b", "Novice"),
        Question.new(Q12, "b", "Novice"),
        Question.new(Q13, "b", "Novice"),
        Question.new(Q14, "b", "Novice"),
        Question.new(Q15, "b", "Novice"),
        Question.new(Q16, "b", "Easy"),
        Question.new(Q17, "b", "Easy"),
        Question.new(Q18, "b", "Easy"),
        Question.new(Q19, "b", "Easy"),
        Question.new(Q20, "b", "Easy"),
        Question.new(Q21, "b", "Easy"),
        Question.new(Q22, "b", "Easy"),
        Question.new(Q23, "b", "Easy"),
        Question.new(Q24, "b", "Easy"),
        Question.new(Q25, "b", "Easy"),
        Question.new(Q26, "b", "Easy"),
        Question.new(Q27, "b", "Easy"),
        Question.new(Q28, "b", "Easy"),
        Question.new(Q29, "b", "Easy"),
        Question.new(Q30, "b", "Easy"),
    ]
    return exe_game(questions) 
  end
# -----------------------------------------------------------------------------------------