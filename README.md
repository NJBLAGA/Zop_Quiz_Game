# **NathanBlaga_T1A3 - T1A3 - Terminal Application**

## **Quiz Game - Zop**

### **Nathan Blaga GitHub Repo:** [https://github.com/NJBLAGA/NathanBlaga_T1A3](https://github.com/NJBLAGA/NathanBlaga_T1A3)

### **Trello Board - BLAGA - Terminal App:** [https://trello.com/b/3egElIWF](https://trello.com/b/3egElIWF)

## **Software Development Plan:**

### **Describe at a high level what the application will do:**

Zop’s main function is to provide the player with a fun new take on quiz games. It delivers to the player a fresh, stylish and unique experience. The game provides the player with a source of knowledge and offers the possibility to learn new information. Zop will ask the player a serious of questions, ranging in diffucilty depending on the level being played on. Once the player has inputed their choosen answer, Zop will formulate if the players answer is indeed the correct or incorrect answer. A scoring system in conjunction with limited attempts per level provides the player with a exciting drive to answer correctly and test their knowledge.

### **Identify the problem it will solve and explain why you are developing it:**

The two main problems Zop aims to solve is that of entainment and testing ones knowledge.
Zop was created and is being devloped as a terminal game. Its main function is to bring fun and enjoyment to the player. Whether it is inbetween classes, lunch breaks at work, or stuck at home on a rainy day faced by bordem. Zop is being developed to provide fun to the player in a simple and lightweight package. Its secondary function aims to test the player’s knowledge and envoke their comeptitive side. Zop is being devloped to not only push player's knowledge base in a challenging and interesting approach but in stylish and appealing way.

### **Identify the target audience:**

Zop's target audience is not defined by an age group or demograhpy. The game is desgined and is intented for players of all ages and backgrounds. For new players who are acustoomed to quiz games, Zop provides a easy and user-friendly experience that helps any new player test their knowledge. While for more seasoned vertians, Zop aims to provide a more challeneging and robust experience.

### **Explain how a member of the target audience will use it:**

Any user who plays Zop will find themseleves in side one of its challeneing levels in mintues without any hassle or diffucilty. Below in the instructions section, players can follow the very simple and user friendly step by step guide to not only install but play Zop. Moreover once the game is running, the game guides the player in various ways and even provides command lines and a main menu page for the games rules and instructions.

## **Features of Zop:**

Zop isnt your average quiz game, it provides the player with a fun and entertaing experience. This is due to its interesting and diverse features. Below are Zop's listed features, describing how each feature works and their intended functions.

**Main Menu Sytem:**

![Zop - Main Menu](./docs/img/in_game_main_menu.png)

![Zop - Welcome Menu](./doc/img/../../docs/img/in_game_begin.png)

The entire game of zop is interconnected thorugh a menu system. This system allows the user to navigate inbetween menus all the way from the title page to any of the 3 levels provided, to an indepth rules and isntructions page. The menu system was devleoped with a test driven development approach. All functions and pathways provided by the system have been tested and constructed to ensure no errors can occur.

**End of question panel:**

![Zop - Level 1 - Correct Answer.](./doc/img/../../docs/img/in_game_correct%20answer.png)
![Zop - Level 1 - Incorrect Answer.](./doc/img/../../docs/img/in_game_incorrect_answer.png)

 The game Zop consists of 3 different levels all with 30 unquie questions with increasing diffucilties. The player is asked at random one of the 30 questions for that level. The player is then prompted to answer either a,b,c or d. Zop will then display an end of question panel in which several key stats are provided. The user will be shown if the inputed the correct answer. If the inputed answer was correct, Zop will then display their current score and attempts remaining. If the inputed answer was incorrect, Zop will inform the player that, the inputed answer was incorrect, provide the correct answer, display the players current score and attempts remaining. This feature allows the player to have a play by play view on how the game is progressing after each question.

**Question difficulty:**

Zop displays the diffcuilty of each question as it is presented to the player. This will aid in illstrating to the player the level of diffuculty pool the question derives from.

**Invalid inputed answer:**

![Zop - Level 1 - Invalid Answer.](./img/../docs/img/in_game_invalid_input.png)

Another interesting feature is that of invalid input prompts.
If the user inputs an answer that is not a,b,c or d, then they are promoted to try agian till the input one of the 4 correct inputs. The user will not lose any attempts for an invalid inputed answer.

**Rules/Instruction Menu:**

![Zop - Level 1 - Rules Menu.](./docs/img/in_game_rules_menu.png)

Another interesting feature of Zop is that of its rules and instructions menu. This menu can be accessed through the main menu or by command line arguments . These command lines arguments can be found below in the zop-helper section. The rules and intrustions menu aid the player in explaining how the game is run and played. It also instructs the player on the requirements of completing any given level and the attempts remaining system.

## **User Interaction and experience:**

Zop is being developed with the intention of providing the user with a fun and error free experience. Zop's desgin and menu system aids in navigating the player through the games variours menus without any hassle or stress. Built for seasoned experts or new users, Zop aims to guide the player from starting Zop up, to entering their name, to spending hours trying to get a perfect run on all levels. None of Zop features are hidden or need a considerable effort by the player to utilise them. Instead the features are provided and displayed to the player from the very onset of Zop asking them their first question. The features of Zop were built with the intention to aid the player's experience and so it was vital to instruct the player through the rules and instruction menu on said features and game mechanics.

The end of question panel feature provided by Zop to the player help to enhance their in game experience. By providing a constant feed of infomation inbetween questions, the player is able to see if they are one question away from completing the level or failing it. Another feature of Zop that excels at enhancing the players experience is that of Zop prompting the playing they have entered a invalid answer. This allows the player to continue to progress through the level without the Zop awarding them a correct or incorrect answer based on the player mistyping their answer or not understanding what they are supposed to enter in the first place. While these variours features help with the in game experience, the menu system enhances the players out of game experience with easy navigation and interaction inbetween menus.

## **Control Flow of Zop:**

Below Zop intial control flow and desgin is shown. The desgin was kept intact from then inital desgin to the current version of the game.

![Control Flow of Zop](./docs/Control%20Flow%20For%20Zop.png)

## **Implementation Plan:**

An implementation plan was created to set out how each feature of Zop would be developed and implemented over a set amount of time.

Each feature included a checklist containing  components and tasks vital to the completion and implmentation of said feature. Each feature and its checklist items had been assigned a prioritation and timeframe in which they were to be desgined and intergrated into Zop. 

Screenshots below depict the final state of the implementation plan. All features and checklist items were completed within time frames and all bugs and errors were resolved.

![Trellowboard - Features - Overall board](./docs/img/trelloboard.png)
![Trellowboard - Features - Main Menu System.](./docs/img/main_menu.png)
![Trellowboard - Features - End Panel.](./docs/img/question_panel.png)
![Trellowboard - Features - Rules Menu.](./docs/img/rules_instructions.png)
![Trellowboard - Features - Difficulty Display Feature.](./docs/img/difficulty.png)
![Trellowboard - Features - Desgin Layout.](./docs/img/desgin_layout.png)
![Trellowboard - Features - Ruby Gems..](./docs/img/desgin_layout.png)

## **Testing:**

During the development of Zop, two main tests were manually conducted to ensure the game was running as expected. Additionally these tests aided in error handling and refining the game's code to ensure no errors would arise. It should be noted these tests help mold the final code and lent some of their operations and components to the game.

**The two tests were named:**

- correct_answer_testing.rb
- score_attempts_testing.rb

### **Test results and data:**

#### **Google Docs - Testing - Terminal App:** [https://docs.google.com/spreadsheets/d/1HHdA5gUlRbrPnrXBQfdPw3rGonBHYkLfq_sWUu_jHIM/edit?usp=sharing](https://docs.google.com/spreadsheets/d/1HHdA5gUlRbrPnrXBQfdPw3rGonBHYkLfq_sWUu_jHIM/edit?usp=sharing)

### **correct_answer_testing.rb**

The below test was created and run to check if the game was recieving an inputed answer from the player. Once recieved the test checks if the code is cross referencing that answer with the correct answer located within the questions array. Once cross refernced the test returns whether the two answers are a match or not. This test served as the backbone of testing Zop. It contains the same for loop and if statement found in the actually code. However instead of returning information to the player, it was assgined a simple match, no match paramter. After running the test on several questions, the results earning a matched response were crossed refernced by hand with the bank of answers I had for all questions. This was a second layer of testing to ensure any information displayed to the player are correct and accurate.

```ruby
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
```

![Test Results - Match](./docs/img/correct_answer_testing_match.png)
![Test Results - No Match](./doc/img/../../docs/img/correct_answer_testing_no_match.png)

Several test cases were run in order to get a more indepth spread of possible inputs.

The first test case was using inputs of "a","b","c" and "d". Results below:

![Test Results - Data - Test Case 1]()

 A second test case was run in which empty inputs were entered such as " ".Results below:

![Test Results - Data - Test Case 2]()

 The third test case was using inputs of "1","2","3" and "4". Results below:

![Test Results - Data - Test Case 2]()

 ### **score_attempts_testing.rb**

The below test was designed and run to check if the code was assgining the right action to score and attempts remaining. If the player entered a correct answer, their score would inscrease by 1. While if the player entered a incorrect answer, their attempt would decrease by 1. The below test like the correct_answer_testing.rb takes the inputed answer by the player and cross-references it agianst the stored answer in the question array. However it adds 1 to score if correct and subtracts 1 from attempt if incorrect.

```ruby
# Testing questions array with 5 unique Questions.
# Each Question in the array has an assigned variable from the question bank alongside correct answer and corresponding difficulty. 
# Using the above array, level 1 returns the exe_game(questions) method and runs the quiz using the above questions.
# -----------------------------------------------------------------------------------------
# Variables for testing: score and attempts.
score = 0
attempts = 5
# -----------------------------------------------------------------------------------------
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
        score += 1
        # If true and answer == question.answer add 1 to score variable.
        puts "------------------------------------------"
        puts "Score: " + score.to_s
        # Display current score.
        puts "Attempts left: " + attempts.to_s
        # Display current attempts remaining.
        puts "------------------------------------------"
    else 
        puts "------------------------------------------"
        puts "no match"
        # If false and answer does not == question.answer display no match.
        attempts -= 1
        # If false and answer does not == question.answer subtract 1 from attempt variable.
        puts "------------------------------------------"
        puts "Score: " + score.to_s
        # Display current score.
        puts "Attempts left: " + attempts.to_s
        # Display current attempts remaining.
        puts "------------------------------------------"
        puts question.answer
        # If false and answer does not == question.answer display correct answer to the question.
    end
end

```

![Test Results - Correct input](./doc/img/../../docs/img/score_attempts_testing.png)

![Trellowboard -Inorrect input](./doc/img/../../docs/img/score_attempts_testing_invalid_answer.png)

Several test cases were run in order to get a more indepth spread of possible inputs and thir impact on score and attempts.

The first test case was using inputs of "a","b","c" and "d". Results below:

![Test Results - Without validation - Data - Test Case 2]()

 A second test case was run in which empty inputs were entered such as " ".Results below:

![Test Results - Without validation - Data - Test Case 2]()

 The third test case was using inputs of "1","2","3" and "4". Results below:

![Test Results - Without validation - Data - Test Case 2]()

Running test cases of "a","b","c" and "d" resulted in the code and test performing as intended. However what was discovered from this was that like the previous testing, any input other then "a","b","c" and "d" would not only result in an incorrect answer, but reduce the attempts remaining.

This was an issue as the game could not distinguish between an incorrect answer and a mistype or a user typing error. 

To resolve this issue a validation module was implmented. Its function was to make sure that only answers of "a" "b" "c" and "d" would be accepted. Intergrating this into the code meant that an error in the players inputed answer, was not considered vaild.

Running this moudle through a loop allowed the game to prompt the user mutpuile times for a correct input until a vaild answer was inputed. This moudle solved the main issue with invaild player inputs and added value to the the overall performance of the game.

The same test cases above were run with the new validation module in order to get a more indepth spread of possible inputs and thir impact on score and attempts.

The first test case was using inputs of "a","b","c" and "d". Results below:

![Test Results - With validation - Data - Test Case 1]()

 A second test case was run in which empty inputs were entered such as " ".Results below:

![Test Results - With validation - Data - Test Case 2]()

 The third test case was using inputs of "1","2","3" and "4". Results below:

![Test Results - With validation - Data - Test Case 3]()

## **Instructions:**

### **System requirements:**

- Win32/Console/ANSI (for Windows)

### **Dependencies:**

- gem "artii", "~> 2.1"

- gem "colorize", "~> 0.8.1"

- gem "rspec", "~> 3.10"

- gem "tty-prompt", "~> 0.22.0"

- gem "tty-spinner", "~> 0.9.3"

### **Installation:**

- ./install_zop.sh

### **Run:**

- ./run_zop.sh

### **Zop_Helper:**

- ruby zop_helper.rb -r
  - Run to display zop_helper rules.
- ruby zop_helper.rb -i
  - Run to display zop_helper instructions.
- ruby zop_helper.rb -d
  - Run to display zop_helper difficulties.

### **Reference List:**

(Who wants to be a G MAN) --DO TONIGHT
