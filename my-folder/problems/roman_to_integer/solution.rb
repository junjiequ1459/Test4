def roman_to_int(s)
  roman_key = {"I"=>1,"V"=>5,"X"=>10,"L"=>50,"C"=>100,"D"=>500,"M"=>1000}
  result = 0
  prev_value = 0
  s.each_char do |c|
    curr_value = roman_key[c]
    if curr_value > prev_value
      result -= prev_value
    else
      result += prev_value
    end
    prev_value = curr_value
  end
  result += prev_value
end
