def character_frequency(array)
  frequency = Hash.new(0)  #Create a hash with default value of 0

  array.each do |char|
    frequency[char] += 1  #Increment the count for each character
  end

  frequency
end

array = ['a', 'b', 'c', 'a', 'b', 'a', 'd']
freq = character_frequency(array)


freq.each do |char, count|
  puts "#{char}: #{count}"
end
