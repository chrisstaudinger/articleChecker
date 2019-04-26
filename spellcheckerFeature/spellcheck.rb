##### EXTENDED FEATURE STARTED FROM HERE

### spelling check
module Spellchecker
require 'net/http'
require 'uri'
require 'json'
def spellcheck_file(file)
key = '367cd0e8df124817b504bf27fad89937' # key only valid for 7 days
uri = 'https://api.cognitive.microsoft.com'
path = '/bing/v7.0/spellcheck?'
params = 'mkt=en-uk&mode=proof' # en-uk: to check British English

uri = URI(uri + path + params)
uri.query = URI.encode_www_form({
   # Request parameters
'text' => file # this variable takes in our text
})

request = Net::HTTP::Post.new(uri)
request['Content-Type'] = "application/x-www-form-urlencoded"
request['Ocp-Apim-Subscription-Key'] = key 

response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
  http.request(request)
end

result = JSON.pretty_generate(JSON.parse(response.body))


ruby_hash = Hash.new
ruby_hash = JSON.parse(result)

flagged_arr1 = ruby_hash["flaggedTokens"]



# flagged_arr1.each do |elem| # array of hashes
#   print elem["token"] + "," 
#   print elem["suggestions"][0]["suggestion"]
#   puts
# end


# string_in_arr = flagged_arr1[0]["token"] + " , " + flagged_arr1[0]["suggestions"][0]["suggestion"]

# arr1 = [string_in_arr]

# print arr1

# puts

prompt_user_to_name_output_file = "\nData has been created for you of words you have mispellt and the suggested correct spelling. \nPlease input a name of your choice for the resulting data to be stored"
puts Paint[prompt_user_to_name_output_file, :blue, :bright]
puts Paint["Your Output File Has been created for you '#{output_file_name}.csv'. It is in the same directory you opened this program in.", :green, :bright]

def save_res_csv(input_arrr)
    output_file_name = gets().chomp()
    CSV.open(output_file_name + ".csv", "ab") do |csv| 
        input_arrr.each do |element|     
        string_in_arr = element["token"] + " , suggested:"+ element["suggestions"][0]["suggestion"]
        res_string = [string_in_arr]    
        csv << res_string
        end
    end 
  end

save_res_csv(flagged_arr1)
end
end