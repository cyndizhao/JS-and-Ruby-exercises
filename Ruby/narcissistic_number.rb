ef narcissistic?( value )
  return true if value == 0
  digit_number = Math.log10(value).floor + 1
  # digit_number = value.length
  sum = value.to_s.split("").inject(0) {|sum, element| sum + element.to_i ** digit_number}
  return sum == value ? true : false
end
