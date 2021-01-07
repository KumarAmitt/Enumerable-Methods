require_relative 'enumerables'

a = [5, 3, 3, 2, 4, 8, 3, 6, 5, 0, 1, 5, 1, 4, 0, 1, 0, 4, 0, 8, 4, 8, 6, 7, 8, 4, 0, 0, 6, 1, 0, 8, 4, 0, 6, 2, 4, 6, 0, 5, 3, 0, 2, 3, 4, 8, 7, 5, 6, 8, 8, 3, 0, 8, 3, 1, 8, 4, 4, 2, 6, 6, 2, 5, 6, 4, 4, 2, 3, 2, 7, 7, 1, 8, 2, 5, 4, 8, 7, 3, 1, 0, 5, 7, 1, 5, 1, 5, 1, 5, 1, 0, 0, 8, 7, 1, 1, 1, 4, 3]

range = Range.new(5, 50)

words = %w[dog door rod blade]

search = proc { |memo, word| memo.length > word.length ? memo : word }

# 1. my_each test-----------------------------

# %w[A B1 c e dad ieee].my_each { |item| puts item.length }
# a.my_each {|item| print item}
# puts a.my_each.is_a?(Enumerator)
# block = proc { |num| num < 4 }
# print a.my_each(&block)
# print range.my_each(&block)



#  2 ***my_each_with_index

#  ["any","k","a","b","c","d","e"].my_each_with_index { |item,index| puts "#{item} : #{index}"}
#  a.my_each_with_index {|item,index| puts "#{item} & #{index}"}
#  puts a.my_each_with_index.is_a?(Enumerator)
#  block = proc { |num| num < 4 }
#  print a.my_each_with_index(&block)

# 3 *** my_select test---------------------------

# print(a.my_select(&:even?))
# print a.my_select.is_a?(Enumerator)

# 4 *** my_all? test-----------------------------

# puts %w[ant bear cat].my_all? { |word| word.length >= 3 }  #=>true
# puts %w[ant bear cat].my_all? { |word| word.length >= 4 }  #=>false
# puts %w[ant bear cat].my_all?(/t/)                    #=>false
# puts [1, 2i, 3.14].my_all?(Numeric)                        #=>true
# puts [nil, true, 99].my_all?                               #=>false
# puts [].my_all?                                            #=>true
# puts a.my_all?(3)                                    #=>false
# puts [1, 'hi', true, []].my_all?                           #=>true

# 5 *** my_any? test-----------------------------------


# puts %w[ant bear cat].my_any? { |word| word.length >= 3 } #=> true
# puts %w[ant bear cat].my_any? { |word| word.length >= 4 } #=> true
# puts %w[ant bear cat].my_any?(/d/)                        #=> false
# puts [nil, true, 99].my_any?(Integer)                     #=> true
# puts [nil, true, 99].my_any?                              #=> true
# puts [].my_any?                                           #=> false
# puts words.my_any?('cat')                                 #=> false
# puts [  nil, false].my_any?                               #=> false

# # 6 *** my_none? test

# puts %w{ant bear cat}.my_none? { |word| word.length == 5 } #=> true
# puts %w{ant bear cat}.my_none? { |word| word.length >= 4 } #=> false
# puts %w{ant bear cat}.my_none?(/d/)                        #=> true
# puts [1, 3.14, 42].my_none?(Float)                         #=> false
# puts [].my_none?                                           #=> true
# puts [nil].my_none?                                        #=> true
# puts [nil, false].my_none?                                 #=> true
# puts [nil, false, true].my_none?                           #=> false
# puts words.my_none?(5)                                     #=> true
# puts [3, 4, 7, 11].my_none?(4)                             #=> false



# # 7 *** my_count? test

# ary = [1, 2, 4, 2]
# puts ary.my_count               #=> 4
# puts ary.my_count(2)            #=> 2
# puts ary.my_count{ |x| x%2==0 } #=> 3
# puts range.my_count             #=> 46


# # 8 *** my_map test

print (1..4).my_map { |i| i * i } #=> [1, 4, 9, 16]
random_proc = proc { |num| num * 2 }
print (1..4).my_map(random_proc) #=> [2, 4, 6, 8]
puts a.my_map.is_a?(Enumerator) #=> true
my_proc = proc { |num| num > 10 }
print a.my_map(my_proc) { |num| num < 10 }





