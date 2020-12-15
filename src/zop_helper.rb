require 'colorize'
def gets
    STDIN.gets
  end

system("clear")
puts "Welcome to Zop Helper!".colorize(:yellow,)
puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
puts "To view rules type the following:".colorize(:cyan,)
puts "ruby zop_helper.rb -r".colorize(:light_magenta,)
puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
puts "To view instructions type the following:".colorize(:cyan,)
puts "ruby zop_helper.rb -i".colorize(:light_magenta,)
puts "-------------------------------------------------------------------------------------------------------------------------------".colorize(:light_green,)
if ARGV.length > 0
  # handle command line arguments
  if ARGV[0] == '-r'  
    # print the rules menu
    puts "Choose what level of Zop you wish to play.".colorize(:cyan,)
    puts "Each level has 30 unique questions.".colorize(:cyan,)
    puts "Answer 10 questions correctly to beat the level and progress.".colorize(:cyan,)
    puts "Answer 5 questions incorrectly and game over.".colorize(:cyan,)
    puts "Question difficulty will dramatically increase as you progress through the levels. ".colorize(:cyan,)
    puts "Have fun! ".colorize(:cyan,)
  else ARGV[1] == '-i'
    puts "During each level when a question is displayed, answer by typing either: (a,b,c,d).".colorize(:cyan,)
end
end

