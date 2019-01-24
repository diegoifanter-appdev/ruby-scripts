desc "Calculate mode"
task :mode do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  numbers=numbers.sort
  mode= numbers[0]
  
  numbers.each do |number|
    if numbers.count(number) > numbers.count(mode)
    mode=number 
    end
  end
  
  ap "Sorted numbers:"
  ap numbers
  ap "Mode: "+mode.to_s
end
