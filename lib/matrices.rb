require 'fracciones'
class Matriz
attr_accessor :nf, :nc, :matr

def initialize(filas, columnas, *args)
	@nf=filas
	@nc=columnas
	@matr=Array.new
	for i in (1..nf)
	@score=[]	
	for j in (1..nc)
	@score<<args[(i-1)*nc+j-1]
	end
	@matr.push(@score)
	end
end

def +(m)
matr_resul=Array.new
for i in (1..@nf)
	score=[]
	for j in (1..@nc)
	score.push(matr[i-1][j-1]+m.matr[i-1][j-1])
	end
matr_resul.push(score)
end

matr_resul
end

def *(m)
matr_resul=Array.new
@var=0.0
for i in (1..@nf)
        score=[]
        for j in (1..m.nc)
	@var=0.0
	for k in (1..@nc)
        @var=@var +(matr[i-1][k-1]*m.matr[k-1][j-1]) 
	end
	score.push(@var)
	end
matr_resul.push(score)
end        
matr_resul
end
end

