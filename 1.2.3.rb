require "prime"
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

def delitels(n)
    det=[n]
    for i in 1..(n/2)
        if n % i==0
            det<<i
        end
    end
   return det
end

def prost_delit(d)
    det1=[]
    for i in 0..(d.size-1)
        if d[i].prime? 
            det1<<d[i]
        end
    end
    return det1
end    

def max_pr(p)
    max=0
    for i in 0..(p.size-1)
        if p[i]>max
            max=p[i]
        end
    end
    return max
end

def execute_max(n)
    d = delitels(n)
    p=prost_delit(d)
    max_pr(p)
end

n= ARGV[0].to_i
puts "Число равно #{n}" 

 #d=delitels(n)
#puts "делители#{d}"
#p=prost_delit(d)
#puts "простые делители #{p}"
#puts max(p)

#puts multi_digits_five(n)