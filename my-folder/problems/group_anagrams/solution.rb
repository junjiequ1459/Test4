# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)

hash = {}

strs.each do |ele|
sortedWord = ele.chars.sort

if hash[sortedWord]
    hash[sortedWord] << ele
else
    hash[sortedWord] = [ele]
end

end

hash.values
    
end

