function [ G ] = updateG( alpha , G0 , t , T )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    G = G0 * exp(-alpha * t/T);
end

