function [ F ] = calcFi( G , M , X , p , D )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    n = size(X , 1);   
    F = zeros(n , D);
    for i =1 : n
        %for d=1 : D
            for j=1 : n
                if(i ~= j)
                    R = norm(X(i,:)-X(j,:),2);
                    Ft(i,:) = G * (M(j)/(R^p + eps)) * (X(j,:) - X(i,:));
                    F(i,:) = F(i,:) + rand(1,size(X,2)).*Ft(i,:);
                end
            end
       % end
    end
end

