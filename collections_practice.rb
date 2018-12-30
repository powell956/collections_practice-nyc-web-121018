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
        new_arr << array[2]
      else
        new_arr << array[2]
        new_arr << array[1]
      end
    elsif counter == 2
      counter += 1
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
  range = 0..(array.length-1) 

  for el in range do
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
  counter = array.length - 1

  while counter > -1
    new_arr << array[counter]
    counter -= 1
  end

  new_arr
end


def kesha_maker(array)
  new_arr = []

  for el in array do
    if el.length > 2
      chars = el.split("")

      chars[2] = "$"
      el = chars.join("")

      new_arr << el
    else
      new_arr << el
    end
  end

  new_arr
end


def find_a(array)
  new_arr = []

  for el in array do
    if el.start_with?("a")
      new_arr << el
    end
  end

  new_arr
end

# def sum_array(array)
#   sum = 0
#
#   for el in array do
#     sum += el
#   end
#
#   sum
# end

def sum_array(array)
  array.reduce(:+)
end

def add_s(array)
  array.collect.with_index { |element, index|
    if index = 1
      next
    else
      element << "s"
    end
  }
  array
end
