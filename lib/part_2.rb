def reverser(str, &prc)
  prc.call(str.reverse)
end  

def word_changer(sent, &prc)
  words = sent.split
  new_words = []

  words.each do |word|
    new_words << prc.call(word)
  end  
  new_words.join(" ")
end  

def greater_proc_value(num, prc_1, prc_2)

  if prc_1.call(num) > prc_2.call(num) 
    return prc_1.call(num)
  else  
    return prc_2.call(num)
  end  
end  

def and_selector(arr, prc_1, prc_2)
  new_arr = []

  arr.each do |ele|
    if prc_1.call(ele) == true && prc_2.call(ele) == true
      new_arr << ele
    end
  end  
  new_arr   
end  

def alternating_mapper(arr, prc_1, prc_2)
new_arr = []

  arr.each_with_index do |ele, idx|
    if idx.even?
      new_arr << prc_1.call(ele)
    else
      new_arr << prc_2.call(ele)
    end  
  end  
new_arr  
end  