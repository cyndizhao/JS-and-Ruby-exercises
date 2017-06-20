def expanded_form(num)
  num_arr = num.to_s.split('')
  tick = '1'
  new_arr = []
  num_arr.reverse.each do |num|
    unless num == '0'
      new_arr << (num.to_i * tick.to_i).to_s
    end
    tick << '0'
  end
  new_arr.reverse.join(' + ')
end
