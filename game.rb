puts 'You are about to play a game of Rock, Paper, Scissors!'
puts 'Please enter (r) for Rock, (p) for Paper, and (s) for Scissors.'
puts 'Best of luck!'

def comp_rand
  rand_numb = rand(3)

  if rand_numb == 1
    return "Rock"
  elsif rand_numb == 2
    return "Paper"
  else rand_numb == 0
    return "Scissors"
  end
end

def player_choice rps
  if rps == 'r'
   return "Rock"
 elsif rps == 'p'
   return "Paper"
 else rps == 's'
   return "Scissors"
  end
end

player_wins = 0
computer_wins = 0

while true
  puts ""
  puts "Player Score: #{player_wins}, Computer Score: #{computer_wins.to_s}"
  puts "Please choose rock (r), paper (p), or scissors (s):"

  player_input = gets.chomp.downcase

  if (player_input == 'r' || player_input == 'p' || player_input == 's')

    comp_rand_now = comp_rand

    if player_input == 'r'
      puts "Player chose #{player_choice('r')}"
      puts "Computer chose #{comp_rand_now}"

       if player_input == 'r' && comp_rand_now == 'Rock'
         puts "Tie!"

       elsif player_input == 'r' && comp_rand_now == 'Scissors'
         puts "Rock Smashes Scissors, you win"
         player_wins = player_wins + 1

       else player_input == 'r' && comp_rand_now == 'Paper'
         puts "Paper Covers Rock, you lose"
         computer_wins = computer_wins + 1
       end


    elsif player_input == 'p'
      puts "Player chose #{player_choice('p')}"
      puts "Computer chose #{comp_rand_now}"

      if player_input == 'p' && comp_rand_now == 'Paper'
        puts "Tie!"

      elsif player_input == 'p' && comp_rand_now == 'Scissors'
        puts "Scissors cuts paper. You lose"
        computer_wins = computer_wins + 1

      else player_input == 'p' && comp_rand_now == 'Rock'
        puts "Paper Covers Rock, you win"
        player_wins = player_wins + 1
      end

    elsif player_input == 's'
      puts "Player chose #{player_choice('s')}"
      puts "Computer chose #{comp_rand_now}"

      if player_input == 's' && comp_rand_now == 'Scissors'
        puts "Tie!"

      elsif player_input == 's' && comp_rand_now == 'Paper'
        puts "Scissors cuts paper. You Win"
        player_wins = player_wins + 1

      else player_input == 's' && comp_rand_now == 'Rock'
        puts "Rock Smashes Scissors, you lose"
        computer_wins = computer_wins + 1
      end
    end

  else
    puts "Invalid entry. Please enter 'r', 'p' or 's'"
  end

  if player_wins >= 2 || computer_wins >= 2
    puts 'Thank you for playing!'
    break
  end

end

if player_wins == 2
  puts ""
  puts "Player Wins!"
else
  puts ""
  puts "Computer Wins!"
end
