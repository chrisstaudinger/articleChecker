def clean_text(str)
  str.scan /(?<=^|[^a-z])[a-z](?:[a-z'\d]*[a-z])?(?:[a-z-\d]*[a-z])?/i
end

str1 = "Johnny bit the dog! The dog, bit Johnny. co-author dog's dog's--"

# Positive Test Case
def positive_test_clean_text(str)
res = clean_text(str)
if (res == ["Johnny", "bit", "the", "dog", "The", "dog", "bit", "Johnny", "co-author", "dog's", "dog's"])
    puts "PASSED"
else
    puts "FAILED"
end
end
positive_test_clean_text(str1)
positive_test_clean_text("lorem ipsum")

# Negative Test Case
def negative_test_clean_text(str)
res = clean_text(str)
if (res != ["Johnny", "bit", "the", "dog", "The", "dog", "bit", "Johnny", "co-author", "dog's", "dog's"])
    puts "PASSED"
else
    puts "FAILED"
end
end
negative_test_clean_text("loreum IPSUM")
