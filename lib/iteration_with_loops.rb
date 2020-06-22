def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  outer_result = ""
  row_index = 0
  while row_index < src.count do
    element_index = 0
    string = ""
    while element_index < src[row_index].count do
      if src[row_index][element_index].class == String
        string = src[row_index][element_index] + ' '
      end
      outer_result += string
      element_index += 1
    end
    row_index +=1
  end
  outer_result
end
