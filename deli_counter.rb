require "pry"

katz_deli = []

def line(current_line)
  line_array = []
  if current_line.length == 0 
    puts "The line is currently empty."
  else
    current_line.each_with_index {|name, index| line_array << "#{index+1}. #{name}"}
    puts "The line is currently: #{line_array.join(" ")}"
  end
end

$counter = 0 


def take_a_number(current_line)
    $counter += 1 
    puts "Your number is #{$counter}. You are number #{$counter} in line."
end

def now_serving(current_line)
  if current_line.length == 0 
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{current_line.shift}."
  end
end

numbers = [1, 2, 2, 5, 8, 10, 10]

def count(array)
  count_hash = {}
  array.each do |number|
    count_hash[number] = number.count
  end
end

count(numbers)