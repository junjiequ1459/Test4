def roman_to_int(s)
  roman_key = {"I"=>1,"V"=>5,"X"=>10,"L"=>50,"C"=>100,"D"=>500,"M"=>1000}
  result = 0
  i = 0
  while i < s.length
    curr_value = roman_key[s[i]]
    if i == s.length - 1 || roman_key[s[i+1]] <= roman_key[s[i]]
      result += curr_value
    else
      result -= curr_value
    end
    i += 1
  end
  result
end
