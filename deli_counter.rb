require 'pry'
# Write your code here.

def line array
    case array.length
    when 0
        puts "The line is currently empty."
    else 
        formatted = array.each_with_index.map {|name, index| "#{index + 1}. #{name}"}
        puts "The line is currently: " + formatted.join(' ')
    end
end

def take_a_number( array, person)
    if array.include?(person)
        position = array.index(person) + 1
        puts "Welcome, #{person}. You are number #{position} in line."
    else
        array << person
        position = array.index(person) + 1
        puts "Welcome, #{person}. You are number #{position} in line."
    end
end


def now_serving (array)
    case array.length
    when 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{array[0]}."
        array.shift
    end
end


binding.pry