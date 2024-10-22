array = [1, 2, 'a', 3, nil, 4.5, 5]

doubled_array = array.map do |element|
  if element.is_a?(Numeric)
    element * 2
  else
    element # Return the element unchanged if it's not numeric
  end
end

puts doubled_array.inspect