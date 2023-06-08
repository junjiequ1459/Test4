# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)

obj = {}

strs.each do |words|
key = Array.new(26, 0)

words.each_char do |char|
    key[char.ord - 'a'.ord] += 1
end

if obj[key]
    obj[key] += [words]
else
    obj[key] = [words]
end

end

obj.values
    
end