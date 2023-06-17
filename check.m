function [ Xnew ] = check( X , minim , maxim)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
    %for i = 1 : size(X,1)
    Xnew = X;
        ind = find(Xnew > maxim);
        Xnew(ind) = randi([minim  maxim],size(ind,1),size(ind,2));
        ind = find(Xnew < minim);
        Xnew(ind) = randi([minim  maxim],size(ind,1),size(ind,2));
    %end
end

