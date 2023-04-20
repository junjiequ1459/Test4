# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    y = x.to_s
    y == y.reverse
end