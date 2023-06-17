function [fitness , M , Best , BestInd] = calcGerm(X)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
 %% calculate value
    fitness = estimate(X);
    [Best,BestInd] = min(fitness);
    Worst = max(fitness);
    %% calcualte q
    q = (fitness - Worst) / (Best - Worst);
    isnan(q)
  %for i = 1 : size(q,1)
    M = q / sum(q);
 % end

end

