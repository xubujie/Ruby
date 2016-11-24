class HelloWorld
    attr_accessor:name

    def hello
        puts "Hello, #{@name}."
    end

end

jyo = HelloWorld.new()
jyo.name = "jyo"
marina = HelloWorld.new()
ruby = HelloWorld.new()

jyo.hello()
marina.hello()
ruby.hello()
