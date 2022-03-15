n= ARGV[0].to_i
puts "Число равно #{n}" 
def multi_digits_five(n)
    s=1
    while n!=0
        if n%10!=5
         s*=n%10
        end
         n=n/10
    end
   puts ("multi #{s}")
end
puts multi_digits_five(n)
