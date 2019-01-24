desc "Check if today is Friday"
task :tgif do
 
 if Time.now.strftime("%A") == "Friday"
  ap("Yay, it's Friday!")
 else
  ap("Nope, not yet :/") 
 end 
end
