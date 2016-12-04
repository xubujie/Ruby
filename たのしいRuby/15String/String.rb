# 1
s = "Ruby is an object oriented programming language"
s_array = s.split
print "1 #{s_array}"

# 2
s = "Ruby is an object oriented programming language"
s_array = s.split

p s_array.sort

# 3
s = "Ruby is an object oriented programming language"
s_array = s.split
p s_array.sort_by{|s| s.downcase}

# 4
s = "Ruby is an object oriented programming language"
s.each_char do |chr|
    result = chr.concat(":")
    s.count(chr).times do |i|
        result.concat("*")
    end
    p result
end

# 4答え
s = "Ruby is an object oriented programming language"
count = Hash.new
# 做好Hash表，字母：出现次数
s.each_char do |c|
    count[c] = 0 unless count[c]
    count[c] += 1
end
count.keys.sort.each do |c|
    printf("'%s': %s\n", c, "*" * count[c])
end


# 5 kan2num

def kan2num(kan)
    kans = "一,二,三,四,五,六,七,八,九,十,百,千"
    kans = kans.split(",")
    nums = "1,2,3,4,5,6,7,8,9,10,100,1000"
    nums = nums.split(",")
    ref = {}
    kans.zip(nums){|a,b| ref[a] = b}
    len = kan.size
    if len == 1
        return ref[kan].to_i
    elsif len == 3
        return ref[kan[0]].to_i * 10 + ref[kan[2]].to_i
    elsif len == 5
        return ref[kan[0]].to_i * 100 + ref[kan[2]].to_i * 10 + ref[kan[4]].to_i
    elsif len == 7
        return ref[kan[0]].to_i * 1000 + ref[kan[2]].to_i * 100 + ref[kan[4]].to_i * 10 + ref[kan[6]].to_in
    end
end
p kan2num("")

# 5答え
def kan2num(string)
    digit4 = digit3 = digit2 = digit1 = "0"
    nstring = string.dup

    nstring.gsub!(/一/,"1")
    nstring.gsub!(/二/,"2")
    nstring.gsub!(/三/,"3")
    nstring.gsub!(/四/,"4")
    nstring.gsub!(/五/,"5")
    nstring.gsub!(/六/,"6")
    nstring.gsub!(/七/,"7")
    nstring.gsub!(/八/,"8")
    nstring.gsub!(/九/,"9")

    if nstring =~ /((\d)?千)?((\d)?百)?((\d)?十)?(\d)?$/
        if $1
            digit4 = $2 || "1"
        end
        if $3
            digit3 = $4 || "1"
        end
        if $5
            digit2 = $6 || "1"
        end
        digit1 = $7 || "0"
    end

    return(digit4 + digit3 + digit2 + digit1).to_i
end
p kan2num("七千八百二十三")
p kan2num("千八百二十三")
p kan2num("八百二十三")
p kan2num("百二十三")
p kan2num("百三")
p kan2num("二十三")
p kan2num("十三")
p kan2num("三")
