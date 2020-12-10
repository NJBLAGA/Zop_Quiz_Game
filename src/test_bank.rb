# Gems used through bundler.
require './zop.rb'
require './menu.rb'
# -----------------------------------------------------------------------------------------
# Player_name class.

class Player_name
    def initialize(name)
    @name = name
    end
    end
# -----------------------------------------------------------------------------------------
# Question class.
# Attribute content = questions located in question bank.
# Attribute answer = correct answers to the content.
class Question
    attr_accessor :content, :answer
    def initialize(content, answer)
         @content = content
         @answer = answer
    end
end
# -----------------------------------------------------------------------------------------