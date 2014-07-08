require_relative "coach_answer"
#TODO: Implement the program that makes you discuss with your coach from the terminal.

puts "Posez une question à votre coach"
answer = gets.chomp


until answer == "I am going to work right now SIR !"
  puts coach_answer(answer)
  puts "Posez une question à votre coach"
  answer = gets.chomp
end


