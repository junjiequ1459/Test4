# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
    result = {}

    strs.each do |word|
    key = Array.new(26,0)
    word.each_char {|char| key[char.ord - 'a'.ord] += 1}

    result[key] ||= []
    result[key] << word

    end
    result.values

end