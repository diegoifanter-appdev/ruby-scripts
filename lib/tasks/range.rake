desc "Calculate range"
task :range do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

 max= numbers[0]
  
  numbers.each do |number|
    if number > max
    max=number 
    end
  end
  
    min= numbers[0]
  
  numbers.each do |number|
    if number < min
    min=number 
    end
  end
  
  ap "Your numbers:"
  ap numbers
  ap "Range: "+(max-min).to_s
 
end
