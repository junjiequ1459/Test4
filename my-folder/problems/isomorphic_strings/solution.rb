def is_isomorphic(s, t)
  if s.length != t.length
    return false
  end

  s_to_t = {}
  t_to_s = {}

  s.chars.each_with_index do |e, i|
    if s_to_t.key?(e) && t[i] != s_to_t[e] ||
       t_to_s.key?(t[i]) && t_to_s[t[i]] != e
      return false
    end

    s_to_t[e] = t[i]
    t_to_s[t[i]] = e
  end

  true
end