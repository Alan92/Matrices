class Frac
attr_accessor :num, :denom

def initialize(x,y)
@num=x/mcd(x,y)
@denom=y/mcd(x,y)
end

def mcd(x,y)
d = x.abs, y.abs #[a.abs, b.abs]
while d.min != 0
d = d.min, d.max%d.min
end
return d.max
end

def mostrar
"Fraction #{num}/#{denom}"
end

def to_f
float=@num.to_f/@denom.to_f
end

def ==(other)
@num==other.num and @denom==other.denom
end

def abs
if @num < 0 or @denom < 0
float=(-1)*@num/@denom
elsif 
float=@num/@denom
end
end

def reciprocal
aux=@num
num2=@denom
denom2=aux
"Fraction #{num2}/#{denom2}"
end

def -
"Fraction #{-num}/#{denom}"
end

def +(other)
num2=@num*other.denom+other.num*@denom
denom2=@denom*other.denom
d=mcd(num2, denom2)
num2=num2/d
denom2=denom2/d
"Fraction #{num2}/#{denom2}"
end

def resta(other)
num2=@num*other.denom-other.num*@denom
denom2=@denom*other.denom
d=mcd(num2, denom2)
num2=num2/d
denom2=denom2/d
"Fraction #{num2}/#{denom2}"
end

def *(other)
num2=@num*other.num
denom2=@denom*other.denom
d=mcd(num2, denom2)
num2=num2/d
denom2=denom2/d
"Fraction #{num2}/#{denom2}"
end

def /(other)
num2=@num*other.denom
denom2=@denom*other.num
d=mcd(num2, denom2)
num2=num2/d
denom2=denom2/d
"Fraction #{num2}/#{denom2}"
end

def %(other)
aux=other.num
if other.num < 0
aux=other.num*-1
end
num2=@num-aux
denom2=@denom*other.denom
d=mcd(num2, denom2)
num2=num2/d
denom2=denom2/d
"Fraction #{num2}/#{denom2}"

end
include Comparable
def <=>(other)
@num/@denom <=> other.num/other.denom
end



end
