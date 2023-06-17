function [res] = generate(min , max , row , col)
   res = randi([min max] , row , col);
  % res = res + min;
end