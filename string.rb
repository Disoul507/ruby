def read()
    puts "Введите строку: "
    str=STDIN.gets.chomp().split()
end

 def random(arr)
    arr.permutation.map{|el| el.to_s}.sample
end

def chet(arr)
    a=arr.map{|el| el.length}
    a.delete_if{|x|x%2!=0}.length
end

def color()
a= ARGV[0-3].to_s
    #a.permutation.map{|el| el.to_s}.sample
end

def russia(arr)
    flag=[]
    white= arr.each do |str|
        if str.include?("Бе")
            flag.push.str
        end
    end
    blue= arr.each do |str|
        if str.include?("Си")
            flag.push.str
        end
    end
    red= arr.each do |str|
        if str.include?("Кр")
            flag.push.str
        end
    end
    flag
end
col=color()
#puts "#{col}"
puts "#{random(read())}"
puts "#{chet(read())}"
#puts "#{russia(col)}"