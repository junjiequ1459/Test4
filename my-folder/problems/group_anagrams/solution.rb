# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)

    hash = {}

    strs.each do |word|
    sortStr = word.chars.sort.join
    if hash[sortStr]
        hash[sortStr] += [word]
    else
        hash[sortStr] = [word]
    end

    end
    return hash.values
    
end