n= ARGV[0].to_i
puts "Число равно #{n}" 
#s=0
#while n!=0
 #   s+=n%10
 #   n=n/10
    
#end
#puts s
def sum_digits
    s=0
    while n!=0
         s+=n%10
         n=n/10
    end
    #puts "сумма цифр равна #{s}"
    return s
end
puts sum_digits(n)