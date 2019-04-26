module TextProcessing
#### cleans imported text
  def clean_text(str)
    str.scan /(?<=^|[^a-z])[a-z](?:[a-z'\d]*[a-z])?(?:[a-z-\d]*[a-z])?/i
  end

## Downcase Cleaned Text Array
  def downcase_text_arr(text_arr)
    arr_of_cleaned_downcased_text = []
    text_arr.each do |word|
      arr_of_cleaned_downcased_text << word.downcase()
    end
    arr_of_cleaned_downcased_text
  end

  def count_times_keywords_are_used(arr)
    res_hash = {}
    arrindex = 0
    while (arrindex < arr.length)
      k = arr.count{|x| x == arr[arrindex]}
      res_hash[arr[arrindex]] = k
      arrindex +=1
    end
    res_hash
  end

  # sort values from highest to lowest
  def sort_vals_high_to_low(hash)
    result = hash.sort_by {|key, value| value}.reverse.to_h
  end

end