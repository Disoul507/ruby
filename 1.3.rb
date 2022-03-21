def read(n)
    puts "Введите элементы: "
    list=[]
    for i in 0.. (n-1)
        list<<gets.chomp.to_i
    end
    return list
end

def min_el(arr)
    min_arr=arr[0]
    for i in 0..(arr.size-1)
        if arr[i] < min_arr
            min_arr=arr[i]
        end
    end
    return min_arr
end

def max_el(arr)
    max_arr=arr[0]
    for i in 0..(arr.size-1)
        if arr[i] > max_arr
            max_arr=arr[i]
        end
    end
    return max_arr
end

def sum_el(arr)
    sum=0
    for i in 0..(arr.size-1)
        sum+=arr[i]
    end
    return sum
end

def multi_el(arr)
    multi=1
    for i in 0..(arr.size-1)
        multi*=arr[i]
    end
    return multi
end
puts "Введите кол-во элементов:"
n=gets.chomp.to_i
arr=read(n)
#puts "Наш список: #{arr}"
#puts "Минимальный элемент: #{min_el(arr)}"
#puts "Максимальный элемент: #{max_el(arr)}"
#puts "Сумма чисел: #{sum_el(arr)}"
#puts "Произведение чисел: #{multi_el(arr)}"