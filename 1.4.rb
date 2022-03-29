def read()
    puts "Введите массив чисел"
    arr=gets.chomp().split()
    return arr.map{|el|el.to_i}
end

def min(arr)
    n= arr.size
   a = arr.rindex(arr.min) 
   arr2=arr.slice!(a..n)
    return arr.to_s
end
arr=read()
puts "Массив чисел перед последним минимальным: #{min(arr)}"