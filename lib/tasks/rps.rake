desc "Play rock in rock-paper-scissors"
task :play_rock do
  # Print the move we played
  ap("We played rock.")
  # Select a random move for the computer
  
  opp_play= rand(3)
  
  case opp_play
  when 0
  ap("The computer chose rock")
  ap("We tied!")
  
  when 1
  ap("The computer chose paper")
  ap("We lose!")
  
  when 2
  ap("The computer chose scissors")
  ap("We win!")
  
  end
  # Print the move the computer played

  # Print the outcome of the game
end

desc "Play paper in rock-paper-scissors"
task :play_paper do
  
  ap("We played paper.")
  opp_play= rand(3)
  
  case opp_play
  when 0
  ap("The computer chose rock")
  ap("We win!")
  
  when 1
  ap("The computer chose paper")
  ap("We tie!")
  
  when 2
  ap("The computer chose scissors")
  ap("We lose!")
  
  end

end

desc "Play scissors in rock-paper-scissors"
task :play_scissors do

  ap("We played scissors.")
  opp_play= rand(3)
  
  case opp_play
  when 0
  ap("The computer chose rock")
  ap("We lose!")
  
  when 1
  ap("The computer chose paper")
  ap("We win!")
  
  when 2
  ap("The computer chose scissors")
  ap("We tie!")
  
  end

end
