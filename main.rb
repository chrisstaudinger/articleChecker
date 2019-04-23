require 'csv'

puts "Please input the file path of the file you would like to have checked"
file_path = gets().chomp()
input_file = File.read(file_path)

# input_file = File.read('./test.txt')
# puts input_file
# input_arr = []
# print input_arr = input_file.split(' ')


#### cleans imported text
# cleaned_string = input_file.gsub(/[^\p{Alnum} -]/," ").downcase()
cleaned_string = input_file.gsub(/[^0-9a-z ]/i," ").downcase()
# print cleaned_string
input_arr = cleaned_string.split(" ")
# print input_arr


res_hash = Hash.new
# print res_hash
arrindex = 0
while (arrindex < input_arr.length)
  k = input_arr.count{|x| x == input_arr[arrindex]}
  res_hash[input_arr[arrindex]] = k
  arrindex +=1
end
# print res_hash
# print "\n", res_hash.to_a

puts "Input a name of your choice for the resulting data to be stored"

output_file_name = gets().chomp()

CSV.open(output_file_name + ".csv", "ab") do |csv| 
    res_hash.to_a.each do |elem| 
        csv << elem
    end 
end



