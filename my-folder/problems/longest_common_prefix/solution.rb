# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    strs[0].chars.each_with_index do |letter,i|
        if strs.any? {|str| str[i] != letter}
            return strs[0][0...i]
        end
    end
    strs[0]
end