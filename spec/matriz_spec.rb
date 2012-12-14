
require 'matrices'
describe Matriz do
before :each do
@mat1=Matriz.new(2,2,1,2,3,4)
@mat2=Matriz.new(2,2,5,6,7,8)
@mat5=Matriz.new(4,3,1,2,3,4,5,6,7,8,9,10,11,12)
@mat6=Matriz.new(3,2,5,6,7,8,9,10)
@mat7=Matriz.new(3,2,11,12,13,14,15,16)

@mat_identiti=Matriz.new(3,3,1,0,0,0,1,0,0,0,1)

@mat3=Matriz.new(2,2, Frac.new(1,2).to_f,Frac.new(2,3).to_f, Frac.new(4,5).to_f,Frac.new(6,7).to_f) 
@mat4=Matriz.new(2,2, Frac.new(8,9).to_f,Frac.new(10,11).to_f, Frac.new(12,13).to_f,Frac.new(14,15).to_f)
end
it "Deben de poder sumarse dos matrices" do
@mat1.+(@mat2).should==[[6,8],[10,12]]
@mat6.+(@mat7).should== [[16, 18], [20, 22], [24, 26]]
end

it "Deben de poder sumarse dos matrices de fraccionarios" do
@mat3.+(@mat4).should==[[1.3888888888888888, 1.5757575757575757], [1.7230769230769232, 1.7904761904761903]]
end

it "Deben de poder multiplicarse dos matrices" do
@mat1.*(@mat2).should==[[19.0, 22.0], [43.0, 50.0]]
@mat5.*(@mat6).should==[[46.0, 52.0], [109.0, 124.0], [172.0, 196.0], [235.0, 268.0]]
@mat5.*(@mat_identiti).should==[[1.0, 2.0, 3.0], [4.0, 5.0, 6.0], [7.0, 8.0, 9.0], [10.0, 11.0, 12.0]]
end

it "Deben de poder sumarse dos matrices de fraccionarios" do
@mat3.*(@mat4).should==[[1.0598290598290598, 1.0767676767676768], [1.5023199023199023, 1.5272727272727273]] 
end


end
