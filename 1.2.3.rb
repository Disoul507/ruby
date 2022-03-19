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

def nechet(d)
    det=[]
    for i in 0..(d.size-1)
        if d[i] % 2!=0
            det<<d[i]
        end
    end
   return det
end

def neprost_delit(nc)
    det1=[]
    for i in 0..(nc.size-1)
        if !nc[i].prime? && nc[i]!=1
            det1<<nc[i]
        end
    end
    return det1
end 

def multi_digits(n)
    s=1
    while n!=0
         s*=n%10
         n=n/10
    end
   return s
end

def nod_evklid(m,max)
    if m>max
        a=m
        b=max
    else 
        a=max
        b=m
    end
    if b==0
        return a 
    end
    if b==1
        return 1
    end
    nod_evklid(b,a%b)
  end

def execute_nod(n)
    d = delitels(n)
    puts "делители #{d}"
    nc=nechet(d)
    puts " нечетные делители#{nc}"
    ne=neprost_delit(nc)
    puts " непростые делители #{ne}"
    max=max_pr(ne)
    puts "максимальный непростой делитель #{max}"
    m=multi_digits(n)
    puts "произведение цифр #{m}"
    nod_evklid(m,max)
 end
    
n= ARGV[0].to_i
puts "Число равно #{n}" 

puts "NOD: #{execute_nod(n)}"
#puts "Максималный простой делитель: #{execute_max(n)}"
#puts "Произведение цифр не равных 5: #{multi_digits_five(n)}"