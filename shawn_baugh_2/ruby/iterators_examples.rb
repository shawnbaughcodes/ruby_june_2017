# .any?
puts ["ant", "bear", "cat"].any? { |word| word.length >= 3 }
# .each
puts ["ant", "bear", "cat"].each { |word| print word, "--" }
# .collect
puts (1..4).collect { |i| i*i }
puts (1..4).collect { "cat" }
# .detect/.find
puts (1..10).detect { |i| i %5 == 0 and i % 7 == 0 }
puts (1..100).detect { |i| i %5 == 0 and i % 7 == 0 }
# .find_all
puts (1..10).find_all { |i| i % 3 == 0 }
# .reject
puts (1..10).reject { |i| i % 3 == 0 }
# .upto
puts 5.upto(10) { |i| print i, " " }
