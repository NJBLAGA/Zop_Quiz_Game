 require './zop.rb'
# -----------------------------------------------------------------------------------------
Error Handling
# Module Validators and below method purporse is to check if the inputed answer by the player to true or false.
# If inputed answer == to either "a" "b" "c" or "d" then it is true.
# If inputed answer is any other input, then it is false.
module Validators
    def self.validate_correct_input(answer)
      if answer == "a"
        return true
      elsif answer == "b" 
        return true
      elsif answer == "c" 
        return true
      elsif answer == "d"
        return true
     else
        return false
     end
    end
end

