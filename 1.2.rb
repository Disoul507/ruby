n= ARGV[0].to_i
puts "Число равно #{n}" 
#s=0
#while n!=0
 #   s+=n%10
 #   n=n/10
    
#end
#puts s
def sum_digits(n)
    s=0
    while n!=0
         s+=n%10
         n=n/10
    end
    puts ("sum #{s}")
end
puts sum_digits(n)

def min_digits(n)
    min=9
    while n!=0
        if n%10<min
            min=n%10
        end    
         n=n/10
    end
    puts("min #{min}")
end
puts min_digits(n)


def max_digits(n)
    max=0
    while n!=0
        if n%10>max
         max=n%10
        end
         n=n/10
    end
  puts  ("max #{max}")
end
puts max_digits(n)

def multi_digits(n)
    s=1
    while n!=0
         s*=n%10
         n=n/10
    end
   puts ("multi #{s}")
end
puts multi_digits(n)