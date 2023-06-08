# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    return false if s.length != t.length

    hash = Array.new(26,0)

    s.chars.each do |e|
        hash[e.ord - 'a'.ord] += 1
    end

        t.chars.each do |e|
        hash[e.ord - 'a'.ord] -= 1
    end

    hash.all? {|e| e == 0}
end
