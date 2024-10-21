def join_arrays(arr1, arr2)
  combined_array = []

  # Add elements from the first array
  for element in arr1
    combined_array << element
  end

  # Add elements from the second array
  for element in arr2
    combined_array << element
  end

  combined_array
end


arr1 = [1, 2, 3]
arr2 = [4, 5, 6]
result = join_arrays(arr1, arr2)

# Print the combined array
puts result.inspect
