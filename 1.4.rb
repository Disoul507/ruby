def read()
    puts "Введите массив чисел"
    arr=gets.chomp().split()
    return arr.map{|el|el.to_i}
end

def min(arr)
    n= arr.size
   ind = arr.rindex(arr.min) 
   arr2=arr.slice!(ind..n)
    return arr.to_s
end

def max(arr)
    ind = arr.index(arr.max)
    arr2=arr.slice!(0..ind)
    #arr2=arr.slice!(0..(arr.max))
    return arr.to_s
end
arr=read()
#puts "Массив чисел перед последним минимальным: #{min(arr)}"
puts "Массив чисел после первого максимального: #{max(arr)}"