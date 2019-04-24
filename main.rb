require 'csv'
require 'paint'
require 'tty-font'


font = TTY::Font.new(:doom)
puts font.write("Welcome To")
puts font.write("Article Checker")

prompt_user_file_path = "Please input the file path of the file you would like to have checked"
puts Paint[prompt_user_file_path, :blue, :bright]
file_path = gets().chomp()
input_file = File.read(file_path)

#### cleans imported text
# cleaned_string = input_file.gsub(/[^\p{Alnum} -]/," ").downcase()
cleaned_string = input_file.gsub(/[^0-9a-z ]/i," ").downcase()
# print cleaned_string
input_arr = cleaned_string.split(" ")
# print input_arr


res_hash = Hash.new
arrindex = 0
while (arrindex < input_arr.length)
  k = input_arr.count{|x| x == input_arr[arrindex]}
  res_hash[input_arr[arrindex].to_sym] = k
  arrindex +=1
end
# print res_hash
# print "\n", res_hash.to_a

prompt_user_to_name_output_file = "Input a name of your choice for the resulting data to be stored"
puts Paint[prompt_user_to_name_output_file, :blue, :bright]

output_file_name = gets().chomp()

CSV.open(output_file_name + ".csv", "ab") do |csv| 
    res_hash.to_a.each do |elem| 
        csv << elem
    end 
end



