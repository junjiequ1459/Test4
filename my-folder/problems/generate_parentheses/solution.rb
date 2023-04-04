# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  res = []
  
  def backtrack(s, open_paren, close_paren, n, res)
    if s.length == n * 2
      res << s
      return
    end
    
    if open_paren < n
      backtrack(s + '(', open_paren + 1, close_paren, n, res)
    end
    
    if close_paren < open_paren
      backtrack(s + ')', open_paren, close_paren + 1, n, res)
    end
  end
  
  backtrack('', 0, 0, n, res)
  res
end

