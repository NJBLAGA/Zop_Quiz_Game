require './zop.rb'
require './test_bank.rb'
require 'colorize'
require 'artii'
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
        Question.new(Q31, "a", "Medium"),
        Question.new(Q32, "c", "Medium"),
        Question.new(Q33, "a", "Medium"),
        Question.new(Q34, "c", "Medium"),
        Question.new(Q35, "a", "Medium"),
        Question.new(Q36, "d", "Medium"),
        Question.new(Q37, "d", "Medium"),
        Question.new(Q38, "b", "Medium"),
        Question.new(Q39, "a", "Medium"),
        Question.new(Q40, "c", "Medium"),
        Question.new(Q41, "d", "Medium"),
        Question.new(Q42, "b", "Medium"),
        Question.new(Q43, "b", "Medium"),
        Question.new(Q44, "a", "Medium"),
        Question.new(Q45, "b", "Medium"),
        Question.new(Q46, "b", "Hard"),
        Question.new(Q47, "a", "Hard"),
        Question.new(Q48, "a", "Hard"),
        Question.new(Q49, "b", "Hard"),
        Question.new(Q50, "b", "Hard"),
        Question.new(Q51, "b", "Hard"),
        Question.new(Q52, "d", "Hard"),
        Question.new(Q53, "c", "Hard"),
        Question.new(Q54, "a", "Hard"),
        Question.new(Q55, "a", "Hard"),
        Question.new(Q56, "a", "Hard"),
        Question.new(Q57, "d", "Hard"),
        Question.new(Q58, "c", "Hard"),
        Question.new(Q59, "a", "Hard"),
        Question.new(Q60, "c", "Hard"),
    ]
    return exe_game(questions) 
  end
  # -----------------------------------------------------------------------------------------