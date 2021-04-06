require 'pry'

# def sort_array_asc(int_array)
#   int_array.sort { |a, b| a <=> b }
# end
#
#
# def sort_array_desc(int_array)
#   int_array.sort { |a, b| b <=> a }
# end
#
#
# def sort_array_char_count(str_array)
#   str_array.sort { |str1, str2| str1.length <=> str2.length }
# end
#
#
# def swap_elements(array)
#   new_arr = []
#   counter = 0
#
#   while counter < array.length
#     if counter == 1
#       if array[1] > array [2]
#         new_arr << array[1]
#         new_arr << array[2]
#       else
#         new_arr << array[2]
#         new_arr << array[1]
#       end
#     elsif counter == 2
#       counter += 1
#       next
#     else
#       new_arr << array[counter]
#     end
#     counter += 1
#   end
#
#   new_arr
# end
#
#
# def swap_elements_from_to(array, index, destination_index)
#
#   new_arr = array.each.with_index do |el, i|
#     if i == index
#       array.insert(destination_index, el)
#       array.delete_at(index)
#     else
#       el
#     end
#   end
#
#   array
# end
#
#
# def reverse_array(array)
#   new_arr = []
#   counter = array.length - 1
#
#   while counter > -1
#     new_arr << array[counter]
#     counter -= 1
#   end
#
#   new_arr
# end
#
#
# def kesha_maker(array)
#   new_arr = []
#
#   for el in array do
#     if el.length > 2
#       chars = el.split("")
#
#       chars[2] = "$"
#       el = chars.join("")
#
#       new_arr << el
#     else
#       new_arr << el
#     end
#   end
#
#   new_arr
# end
#
#
# def find_a(array)
#   new_arr = []
#
#   for el in array do
#     if el.start_with?("a")
#       new_arr << el
#     end
#   end
#
#   new_arr
# end
#
# # def sum_array(array)
# #   sum = 0
# #
# #   for el in array do
# #     sum += el
# #   end
# #
# #   sum
# # end
#
# def sum_array(array)
#   array.reduce(:+)
# end
#
# def add_s(array)
#   array.collect!.with_index do |element, index|
#     if index == 1
#       element
#     else
#       element + "s"
#     end
#     # binding.pry
#   end
#   array
# end

def sort_array_asc(array)

  outer_loops_executed = 0

  while outer_loops_executed < array.length - 1

    inner_loops_executed = 0

    while inner_loops_executed < array.length - outer_loops_executed - 1
      if array[inner_loops_executed] > array[inner_loops_executed + 1]
        temp = array[inner_loops_executed]
        array[inner_loops_executed] = array[inner_loops_executed + 1]
        array[inner_loops_executed + 1] = temp
      end
      inner_loops_executed += 1
      # binding.pry
    end

    outer_loops_executed += 1
  end

  array
end

def sort_array_desc(array)
  array.sort do |a, b|
    b <=> a
  end
end

def sort_array_char_count(array)
  array.sort do |a, b|
    a.length <=> b.length
  end
end

def swap_elements(array)
  if array.length < 3
    return array
  else
    temp = array[1]
    array[1] = array[2]
    array[2] = temp
  end
  array
end

# def swap_elements_from_to(array, index_1, index_2)
#   temp = array[index_1]
#   array[index_1] = array[index_2]
#   array[index_2] = temp
# end

def reverse_array(array)
  new_array = []

  array.each_with_index do |element, index|
    new_array.unshift(element)
  end

  new_array
end

def kesha_maker(array)
  new_array = []

  array.each do |word|
    if word.length < 3
      new_array << word
    else
      character_array = word.split("")
      character_array[2] = "$"
      new_word = character_array.join
      new_array << new_word
    end
  end

  new_array
end

def find_a(array)
  array.select do |element|
    element.start_with?("a")
  end
end

def sum_array(array)
  array.reduce { |running_sum, element| running_sum + element }
end

def add_s(array)
  array.map do |string|
    if array[1] != string
      chars = string.split("")
      string = chars.push("s").join
    else
      string
    end
  end
end
