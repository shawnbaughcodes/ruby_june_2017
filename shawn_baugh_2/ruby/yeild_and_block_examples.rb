# yield statement
def test
  puts "You are in the method"
  yield
  puts "You are again back to the method"
  yield
end
test { puts "You are in the block" }

# pass parameters
def test
  yield 5
  puts "You are in the method test"
  yield 100
end
test { |i| puts "You are in the block #{i}" }

# *****************TEST*****************
puts [1,2,3,4,5].select { |elem| elem.even? }
puts Array.new(3)
puts Array.new(4, true)
puts Array.new(4, 2).reject { |elem| elem.even? }
puts (1..5).to_a
puts (1...5).to_a
