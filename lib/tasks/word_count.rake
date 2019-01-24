desc "Calculate word count statistics"
task :word_count do
  path_to_text = Rails.root + "lib/input_files/word_count_text.txt"
  text = open(path_to_text).read
  path_to_special_word = Rails.root + "lib/input_files/word_count_special_word.txt"
  special_word = open(path_to_special_word).read

ap("File input: "+text)
ap("Character count (with spaces): "+text.chomp.length.to_s)
ap("Character count (without spaces): "+text.gsub(/\s+/, "").length.to_s) 
ap("Occurrences of 'story': "+text.scan(/#{special_word.strip}/).count.to_s)
  
end
