clf;
clc;
clear all;
%%Import the data value and create our nodes.
Res = imread('C:\Users\warlo\Desktop\Yazýlým\Evolutionary Algorithms\City Generator 2.0\Test_Data\untitled.jpg');
[rows, columns] = size(Res);
columns = columns/3;
limit = 500;
F_Layer = zeros(rows,columns,limit);
%%Create Our First Layer with Data
for r=1:rows
    for c=1:columns
        F_Layer(r,c,1) = Res(r,c,1)/255;
    end
end

for r=1:rows
    for c=1:columns
        for x=1:limit
            F_Layer(r,c,x) = rand(1);
        end
    end
end