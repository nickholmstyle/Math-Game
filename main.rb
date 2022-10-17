require './player.rb'
require './questions.rb'

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

questions = Questions.new()

while player1.lives != 0 and player2.lives != 0
  puts "---- NEW TURN ----"
  puts "#{player1.name}"
  questions.newQuestion()
  puts questions.question
  player1_answer = gets.chomp.to_i
  if player1_answer === questions.answer
    puts "Yessssss."
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  else
    puts "Nah blood."
    player1.lose_life()
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  end

  puts "---- NEW TURN ----"
  puts "#{player2.name}"
  questions.newQuestion()
  puts questions.question
  player2_answer = gets.chomp.to_i
  if player2_answer === questions.answer
    puts "Yessssss."
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  else
    puts "Nah blood."
    player2.lose_life()
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  end
end

if player1.lives == 0 && player2.lives == 0
  puts "IT'S A TIE. REMATCH?"
elsif player1.lives == 0
  puts "GAME OVER. #{player2.name} WINS!"
else puts "GAME OVER. #{player1.name} WINS!"
end