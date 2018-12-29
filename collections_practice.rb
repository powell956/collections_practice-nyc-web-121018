def sort_array_asc(int_array)
  int_array.sort { |a, b| a <=> b }
end

def sort_array_desc(int_array)
  int_array.sort { |a, b| b <=> a }
end

def sort_array_char_count(str_array)
  str_array.sort { |str1, str2| str1.length <=> str2.length }
end

def swap_elements(array)
  new_arr = []
  counter = 0
  while counter < array.length
    if counter == 1
      if array[1] > array [2]
        new_arr << array[1]
      else
        new_arr << array[2]
      end
    elsif counter == 2
      next
    else
      new_arr << array[counter]
    end
    counter += 1
  end
  new_arr
end

def swap_elements_from_to(array, index, destination_index)
  new_arr = []
  temp = []
  counter = 0
  while counter < array.length
    if counter == index
      temp << array[index]
    elsif counter == destination_index
      array.push(temp.shift)
    else
      new_arr << array[counter]
    end
    counter += 1
  end
  new_arr
end

def reverse_array(array)
  new_arr = []
  counter = array.length + 1
  until counter == 0
    new_arr << array[counter]
    counter -= 1
  end
  new_arr
end
