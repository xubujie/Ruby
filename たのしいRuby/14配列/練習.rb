# 1
def oneTo100()
    a = []
    1.upto(100) do |i|
        a << i
    end
    return a
end

# easy way
a = (1..100).to_a

# p oneTo100[99]
# 2.1
a1 = oneTo100
a2 = []
a1.each do |i|
    a2 << 100*i
end
# 2.2
a1.collect{|item| item * 100}
p "a1 is #{a1}"

# 3.1
a3 = a1.delete_if{|i| i%3 != 0}
p  "a3 is #{a3}"

a3 = a1.select{|i| i%3 == 0}

# 3.2
a1.reject!{|i| i%3 != 0}
p "a1 is #{a1}"

# 4
a4 = a1.reverse

# 5
sum = 0
oneTo100.each do |i|
    sum += i
end

p "5 sum is #{sum}"

# 6
ary = oneTo100
result = Array.new
10.times do |i|
    result << ary[i*10..i*10+9]
end
p "5 result is #{result}"

# 7
def sum_array(nums1, nums2)
    size = nums1.size
    result = []
    size.times do |i|
        result << nums1[i] + nums2[i]
    end
    return result
end

p "7 #{sum_array([1,2,3], [4,5,6])}"

result = []
[1,2,3].zip([4,5,6]){|a, b| result << a+b}
p result
