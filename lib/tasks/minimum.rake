desc "Calculate minimum"
task :minimum do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)
  
  min= numbers[0]
  
  numbers.each do |number|
    if number < min
    min=number 
    end
  end
  
  ap "Your numbers:"
  ap numbers
  ap "Minimum: "+min.to_s

end
