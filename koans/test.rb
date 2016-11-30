# Numeric クラス練習問題
def cels_to_fahr(cels)
    fahr = cels*9/5.0 + 32
end

# assert_equal 32, cels_to_fahr(0)
# assert_equal 33.8, cels_to_fahr(1)

def fahr_to_cels(fahr)
    cels = (fahr - 32)*5/9
end

# assert_equal 0, fahr_to_cels(32)
# assert_equal 1, fahr_to_cels(33)

def dice
    Random.rand(6) + 1
end

def dice10
    s = 0
    10.times do
        s += dice
    end
    return s
end

def prime?(num)

    return false if num <

    2.upto(Math.sqrt(num)) do |i|
        if num % i == 0
            return false
        end
    end
    return true

end

2.upto(10) do |i|
    p prime?(i)
end
