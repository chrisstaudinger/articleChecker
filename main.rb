require 'csv'
require 'paint'
require 'tty-font'
# require 'APIProcesses.rb'
require 'pry'

### welcome part starts from here

def welcome_window()
  font = TTY::Font.new(:doom)
  welcome_message1 = font.write("Welcome  To", letter_spacing: 3)
  welcome_message2 = font.write("Article  Checker", letter_spacing: 3)
  puts Paint[welcome_message1, :green, :bright]
  puts Paint[welcome_message2, :green, :bright]
end

welcome_window() 

### show welcome message and welcome part ends here

prompt_user_file_path = "Please input the file path of the file you would like to have checked. File name must include its extension name."
puts Paint[prompt_user_file_path, :blue, :bright]
file_path = gets().chomp()

# input error checking starts from here:

### To Chiris: Please help to format the text using consistent colour as above (in blue)

while (File.exist?(file_path)!=true)
  puts "File path or file name does not exist or has not been provided correctly. Please re-enter your path and file name 
  (notice extension name must be provided)."
  file_path = gets().chomp()
end

f_ext_type = File.extname(file_path)
while (f_ext_type != ".txt")
  puts "File path or name is not accepted. Please make sure you only check pure text file. The extension name must 
        be '.txt'.  Other file type is not allowed."
  puts "Re-enter your text file name. "
  file_path = gets().chomp()
  f_ext_type = File.extname(file_path)
end
puts Paint["SUCCESS", :green, :bright]


# input error checking ends here:

#### cleans imported text
def clean_text(str)
  str.scan /(?<=^|[^a-z])[a-z](?:[a-z'\d]*[a-z])?(?:[a-z-\d]*[a-z])?/i
end

input_file = File.read(file_path)
arr_of_cleaned_text = clean_text(input_file)

arr_of_cleaned_downcased_text = []
arr_of_cleaned_text.each do |word|
  arr_of_cleaned_downcased_text << word.downcase()
end

res_hash = {}
arrindex = 0
while (arrindex < arr_of_cleaned_downcased_text.length)
  k = arr_of_cleaned_downcased_text.count{|x| x == arr_of_cleaned_downcased_text[arrindex]}
  res_hash[arr_of_cleaned_downcased_text[arrindex]] = k
  arrindex +=1
end
print res_hash

puts
puts 
puts

# sort values from highest to lowest
sorted_hash = res_hash.sort_by {|key, value| value}.reverse.to_h
print sorted_hash

# prompt user for input to name a file they'd like to data to be stored in
prompt_user_to_name_output_file = "Input a name of your choice for the resulting data to be stored"
puts Paint[prompt_user_to_name_output_file, :blue, :bright]
output_file_name = gets().chomp()

# push output to new or exisiting csv using user input
CSV.open(output_file_name + ".csv", "ab") do |csv| 
    sorted_hash.to_a.each do |elem| 
        csv << elem
    end 
end
