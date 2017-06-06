# 1
a = "coding"
b = "coding"
c = :dojo
d = :dojo
puts a.object_id # => 70366642877120
puts b.object_id # => 70366642877100
puts c.object_id # => 897948
puts d.object_id # => 897948

# 2
a = "coding"
b = "coding"
c = :dojo
d = :dojo
puts a.equal?(b) # => false
puts c.equal?(d) # => true

# 3
user = {first_name: "Coding", last_name: "Dojo"}
puts user[:first_name] + ' ' + user[:last_name]# => "Coding"
