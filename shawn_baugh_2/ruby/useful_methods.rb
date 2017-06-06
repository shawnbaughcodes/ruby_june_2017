x = {name: 'Jill', city: 'Austin'}
puts x.empty? # False
puts x.has_key?('name') # WRONG FOR REASON
puts x.has_value?('Jill')
