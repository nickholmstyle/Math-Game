require './player.rb'
require './questions.rb'

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

# puts player1.name
# puts player2.name
questions = Questions.new()

while player1.lives != 0 and player2.lives != 0
   puts "---- NEW TURN ----"
   questions.newQuestion()
   puts questions.question
   player1_answer = gets.chomp.to_i
end
