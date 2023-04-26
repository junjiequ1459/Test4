# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)

    obj = Hash.new(0)

    s.each_char do |ele|
    if obj[ele]
        obj[ele] +=1
    else
        obj[ele] = 1
    end
    end


    t.each_char do |ele|
    if obj[ele]
        obj[ele] -=1
    else
        obj[ele] = -1
    end
    end

obj.each do |key, value|
  if value != 0
  return false
  end
end

true

    
end