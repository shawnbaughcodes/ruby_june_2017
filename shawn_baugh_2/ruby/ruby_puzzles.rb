# 1
def one(arr)
    puts arr.reduce(:+)
    puts arr.reject { |e| e < 10 }
end

x = [3,5,1,2,7,9,8,13,25,32]
one(x)
# 2
def two(arr)
    puts arr.shuffle
    puts arr.find_all { |e| e.length > 5 }
end

y = ['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher']
two(y)
# 3
def three(arr)
    v = ['a','e','i','o','u']
    puts arr.shuffle!.last
    if v.include?(arr.first)
        puts 'Whatever'
    else
        puts arr.first
    end
end
z = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
three(z)
# 4
def four()
    arr = []
    1.upto(10){arr.push(rand(55..100))}
    puts arr
end
four()

# 5
def five()
    arr = []
    1.upto(10){arr.push(rand(55..100))}
    puts arr.sort!
    puts 'Min and Max'
    puts arr.min
    puts arr.max
end
five()
# 6
def six()
    c = []
    1.upto(5){c.push((65+rand(26)).chr)}
    puts c
end
six()
# 7
def seven()
    c = []
    10.times{
        str = ''
        5.times{ str += ((65+rand(26)).chr) }
        c.push(str)
    }
    puts c
end
seven()
