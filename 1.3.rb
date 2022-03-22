def read(n)
    puts "Введите элементы: "
    list=[]
    for i in 0.. (n-1)
        list<<STDIN.gets.chomp.to_i
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
    min_arr
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

def meth(z,arr)
    case z

    when "1"
         puts "Сумма чисел: #{sum_el(arr)}\n"
 
    when "2"
         puts "Минимальное число: #{min_el(arr)}\n"
     
    when "3"
         puts "Максимальное число: #{max_el(arr)}\n"
 
     when "4"
         puts "Произведение чисел: #{multi_el(arr)}\n"
     else
        puts "Неверно введены данные"
     end
end

def keyb
    puts "Введите кол-во элементов:"
    n=STDIN.gets.chomp.to_i
    return read(n)
end

def file(s)
    f=File.open(s)
    se = f.gets
    list_num = se.split
    list_num.map!{|el| el.to_i}
    puts list_num.to_s
    list_num
end

z= ARGV[0]
f= ARGV[1]
s= ARGV[2]
if f=="key"
    puts meth(z,keyb)

elsif f=="file"
    puts meth(z,file(s))

else
    puts"Неккоректно введены данные"
end

#puts "Наш список: #{arr}"
#puts "Минимальный элемент: #{min_el(arr)}"
#puts "Максимальный элемент: #{max_el(arr)}"
#puts "Сумма чисел: #{sum_el(arr)}"
#puts "Произведение чисел: #{multi_el(arr)}"