desc "Calculate standard deviation"
task :standard_deviation do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)


 sum= 0
  
  numbers.each do |number|
    sum+=number
  end
  
  mean= sum/numbers.length
 
  squaresum = 0
  
  numbers.each do |number|
    squaresum+= (mean-number)**2
  end
  variance= squaresum/numbers.length

  std_dev= Math.sqrt(variance)
  ap "Your numbers:"
  ap numbers
  ap "Standard Deviation: "+std_dev.to_s
  
end
