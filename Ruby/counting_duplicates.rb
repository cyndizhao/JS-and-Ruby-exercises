def duplicate_count(text)
  return 0 if text == nil or text == ""
  new_text = text.downcase
  hash = {}
  count = 0
  new_text.split("").each do |c|
    if !(hash.has_key? c)
       hash[c] = 1
    elsif hash[c] == 1
      count += 1
      hash[c] += 1
    end
  end

  return count
end

def duplicate_count(text)
  hsh = Hash.new(0)
  text.downcase.chars.each { |c| hsh[c] += 1 }
  hsh.values.count { |k| k > 1 }
end

def duplicate_count(text)
  arr = text.downcase.split("")
  arr.uniq.count { |n| arr.count(n) > 1 }
end
