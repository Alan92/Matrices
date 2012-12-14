require 'fracciones'
describe Frac do
before :each do
@frac_obj_1=Frac.new(0,1)
@frac_obj_2=Frac.new(2,4)
@frac_obj_3=Frac.new(0,1)
@frac_obj_4=Frac.new(-4,5)
@frac_obj_5=Frac.new(2,4)

end

it " Debe existir un numerador" do
@frac_obj_1.num.should==0
end

it " Debe existir un denominador" do
@frac_obj_1.denom.should==1
end

it "Debe de estar en su forma reducida" do
@frac_obj_2.num.should==1
@frac_obj_2.denom.should==2
end

it "Se debe invocar al metodo num() para obtener el numerador" do
@frac_obj_1.num.should==0
end

it "Se debe invocar al metodo denom() para obtener el numerador" do
@frac_obj_1.denom.should==1
end

it "Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
@frac_obj_2.mostrar.should=="Fraction 1/2"
end

it "Se debe mostar por la consola la fraccion en formato flotante" do
@frac_obj_1.to_f.should==(0/1)
end

it "Se debe comparar si dos fracciones son iguales con ==" do
@frac_obj_1.should==@frac_obj_3
end

it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
@frac_obj_4.abs.should==(4/5)
end

it " Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
@frac_obj_2.reciprocal.should=="Fraction 2/1"
end

it "Se debe calcular el opuesto de una fraccion con -" do
@frac_obj_2.-.should=="Fraction -1/2"
end

it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
@frac_obj_2.+(@frac_obj_5).should=="Fraction 1/1"
end

it " Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
@frac_obj_2.resta(@frac_obj_5).should=="Fraction 0/1"
end

it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
@frac_obj_2.*(@frac_obj_5).should=="Fraction 1/4"
end

it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
@frac_obj_2./(@frac_obj_5).should=="Fraction 1/1"
end

it " Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida" do
@frac_obj_2.%(@frac_obj_4).should=="Fraction -3/10"
end

it "Se debe de poder comprobar si una fracion es menor que otra" do
@frac_obj_4.<=>(@frac_obj_2).should==-1
end

it "Se debe de poder comprobar si una fracion es mayor que otra" do
@frac_obj_2.<=>(@frac_obj_4).should==1
end

it " Se debe de poder comprobar si una fracion es menor o igual que otra" do
[-1,0].include?@frac_obj_4.<=>(@frac_obj_4)
end

it "Se debe de poder comprobar si una fracion es mayor o igual que otra" do
[1,0].include?@frac_obj_2.<=>(@frac_obj_4)
end

end

