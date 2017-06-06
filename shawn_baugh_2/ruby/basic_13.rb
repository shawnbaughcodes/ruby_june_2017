# Print 1-255
puts (1..255).to_a
# Print odd numbers between 1-255
puts (1..255).reject{|elem| elem.odd?}
# Print Sum
sum = 0
for i in 1..255
    sum = sum + i
    puts sum
end
# Iterating through an array
x = [1,3,5,7,9,13]
for i in x
    puts i
end
# # *****or*******
puts x
# Find Max
v = [-3, -5, -7]
puts v.max
# Get Average
a = [2, 10, 3]
sum = 0
for i in a
    sum = sum + i
end
puts sum = sum / a.length
# Array with Odd Numbers
y = [(1..255).to_a.reject{|elem| elem.even?}]
puts y
# Greater Than Y
def greater_than(y)
    g = 0
    x = [1, 3, 5, 7]
    for i in x
        if y >= i
            g += 1
        end
    end
    puts g
end
greater_than(3)
# Square the values
c = [1, 5, 10, -2]
for i in c
    c = i * i
    puts c
end
# Eliminate Negative Numbers
f = [1, 5, 10, -2]
for i in 0...f.length
    if f[i] < 0
        f[i] = 0
        # puts i
    end
end
puts f
# Max, Min, and Average
q = [1, 5, 10, -2]
puts q.max
puts q.min
sum = 0
for i in q
    sum = sum + i
end
puts sum / q.length
# Shifting the Values in the Array
k = [1, 5, 10, 7, -2]
puts k.rotate(-1)
# Number to String
def string(arr)
    arr.each_index {|index| arr[index] = 'dojo' if arr[index] < 0}
    puts arr
end
 arr = [-1, -3, 2]
 string(arr)
