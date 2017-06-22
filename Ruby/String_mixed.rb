def mix(s1, s2)
  range = ('a'..'z').to_a
  new_s1 = s1.chars.uniq.select {|c| (s1.count(c) > 1) && (range.include? c) }
  p new_s1
  new_s2 = s2.chars.uniq.select {|c| (range.include? c) && (s2.count(c) > 1)}
  array = []
  new_s1.concat(new_s2).uniq.each do |c|
    if s1.count(c) > s2.count(c)
      array << "1:#{ c * s1.count(c) }"
    elsif s1.count(c) < s2.count(c)
      array << "2:#{ c * s2.count(c) }"
    else
      array << "=:#{ c * s1.count(c) }"
    end
  end
  return array.sort_by{|e| [-e.length, e]}.join("/")
end

p 1
p mix("Are they here", "yes, they are here")
# 2:eeeee/2:yy/=:hh/=:rr"
p 2
p mix("looping is fun but dangerous", "less dangerous than coding")
# "1:ooo/1:uuu/2:sss/=:nnn/1:ii/2:aa/2:dd/2:ee/=:gg"
p 3
p mix("Lords of the Fallen", "gamekult")
# "1:ee/1:ll/1:oo"
p 4
p mix("codewars", "codewars")
# ""
p 5
p mix("A generation must confront the looming ", "codewarrs")
# "1:nnnnn/1:ooooo/1:tttt/1:eee/1:gg/1:ii/1:mm/=:rr"
