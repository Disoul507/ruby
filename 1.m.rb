require_relative "1.2.3.rb"

def sum_digits(n)
    s=0
    while n!=0
         s+=n%10
         n=n/10
    end
    return s
end

def min_digits(n)
    min=9
    while n!=0
        if n%10<min
            min=n%10
        end    
         n=n/10
    end
    return min
end

def max_digits(n)
    max=0
    while n!=0
        if n%10>max
         max=n%10
        end
         n=n/10
    end
    return max
end

def multi_digits(n)
    s=1
    while n!=0
         s*=n%10
         n=n/10
    end
   return s
end
def multi_digits_five(n)
    s=1
    while n!=0
        if n%10!=5
         s*=n%10
        end
         n=n/10
    end
   return s
end

n= ARGV[0].to_i
puts "Число равно #{n}" 

puts"Выберите метод:"
meth=STDIN.gets.chomp
case meth

   when "1"
        puts "Сумма цифр числа: #{sum_digits(n)}\n"

   when "2"
        puts "Минимальная цифра числа: #{min_digits(n)}\n"
    
   when "3"
        puts "Максимальная цифра числа: #{max_digits(n)}\n"

    when "4"
        puts "Произведение цифр числа: #{multi_digits(n)}\n"

    when "5"
        puts "Произведение цифр не делящихся на 5: #{multi_digits_five(n)}\n"

    when "6"
        puts "Максимальный простой делитель #{execute_max(n)}\n"
    when "7"
        puts "Наибольший общий делитель: #{execute_nod(n)}\n"
    else
        puts"hello world"
end
#puts multi_digits(n)
#puts sum_digits(n)
#puts max_digits(n)
#puts min_digits(n)
#puts multi_digits_five(n)