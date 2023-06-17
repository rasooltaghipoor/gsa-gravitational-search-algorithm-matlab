function [ X , V ] = calcX( A , X , V )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
    %for i=1 : size(X , 1)
    %test = rand(1,size(X,2))
        V = rand(size(X,1),size(X,2)).*V + A; 
        X = X + V;
        check(X , -10 , 10);
    %end

end

