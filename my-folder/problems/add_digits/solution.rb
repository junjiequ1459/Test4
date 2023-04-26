# @param {Integer} num
# @return {Integer}
def add_digits(num)

if num < 10
  return num
end

  result = 0

  strNum = num.to_s

  strNum.chars.each do |ele|
  result += ele.to_i
  end


  add_digits(result)

end