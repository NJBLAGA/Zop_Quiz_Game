 require './zop.rb'

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

