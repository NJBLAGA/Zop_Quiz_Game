require './zop.rb'
require './test_bank.rb'
require 'colorize'
require 'artii'
# -----------------------------------------------------------------------------------------
# Level 3
def level_three
    Artii::Base#asciify
    a = Artii::Base.new
    a.asciify('Level 3')
    system("clear")
    puts a.asciify('Level 3').colorize(:red,)
    puts "BLAGA STUDIOS™ © 2020".colorize(:light_blue,)
    puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
    questions = [
        Question.new(Q61, "a", "Expert"),
        Question.new(Q62, "a", "Expert"),
        Question.new(Q63, "a", "Expert"),
        Question.new(Q64, "a", "Expert"),
        Question.new(Q65, "b", "Expert"),
        Question.new(Q66, "a", "Expert"),
        Question.new(Q67, "d", "Expert"),
        Question.new(Q68, "a", "Expert"),
        Question.new(Q69, "c", "Expert"),
        Question.new(Q70, "b", "Expert"),
        Question.new(Q71, "b", "Expert"),
        Question.new(Q72, "b", "Expert"),
        Question.new(Q73, "b", "Expert"),
        Question.new(Q74, "b", "Expert"),
        Question.new(Q75, "b", "Expert"),
        Question.new(Q76, "b", "Zop"),
        Question.new(Q77, "b", "Zop"),
        Question.new(Q78, "b", "Zop"),
        Question.new(Q79, "b", "Zop"),
        Question.new(Q80, "b", "Zop"),
        Question.new(Q81, "b", "Zop"),
        Question.new(Q82, "b", "Zop"),
        Question.new(Q83, "b", "Zop"),
        Question.new(Q84, "b", "Zop"),
        Question.new(Q85, "b", "Zop"),
        Question.new(Q86, "b", "Zop"),
        Question.new(Q87, "b", "Zop"),
        Question.new(Q88, "b", "Zopd"),
        Question.new(Q89, "b", "Zop"),
        Question.new(Q90, "b", "Zop"),
    ]
    return exe_game(questions) 
  end
  # -----------------------------------------------------------------------------------------