clc
clear all
%% inputs
T = 20;
t = 1;
n = 50;
d = 10;
minim = -10;
maxim = 10;
G0 = 100;
alpha = 2;
p = 2;
V = zeros(n,d);
%% generate first random x
X = generate(minim , maxim , n , d);
for t = 1: T   
    %% update G , Best and Worst
    G = updateG(alpha , G0 , t , T);    
    %% callulate M and fitness values
    [fitness , M ] = calcGerm(X);   
    %% calclutae Fij and Fi
    F = calcFi(G , M , X , p , d);
    %% calculate A
    A = calcA(F , M , n);
    %% calulate X , V
    [X , V] = calcX(A , X , V);     
end
%  [fitness , M ] = calcGerm(X);
%  [c ind] = sort(fitness);
%  disp(X(ind(1),:));
%  disp(c(1));
