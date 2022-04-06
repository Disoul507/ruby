def read()
    puts "Введите массив чисел"
    arr=gets.chomp().split()
    return arr.map{|el|el.to_i}
end

def inter()
    puts"Введите начало интервала"
    a = gets.chomp()
    puts"Введите конец интервала"
    b = gets.chomp()
    arr=(a..b).to_a
    return arr.map{|el|el.to_i}
end

def min(arr)
    n= arr.size
   ind = arr.rindex(arr.min) 
   arr.slice!(ind..n)
    return arr.to_s
end

def max(arr)
    ind = arr.index(arr.max)
    arr.slice!(0..ind)
    return arr.to_s
end

def sum_inter(arr,arr1)
    arr2= arr & arr1
    a=arr2.reduce{|result,el| result+el}
    return a
end


#puts "Массив чисел перед последним минимальным: #{min(read())}"
#puts "Массив чисел после первого максимального: #{max(read())}"
#puts "Сумма элементов попадающих в интервал: #{sum_inter(read(),inter())}"