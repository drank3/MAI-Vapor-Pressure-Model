function cells = modelCalc(file)
    
    file = [file '.mat'];
    load(file)
    
    cSub 
     A = (hSub - cSub*298.15)/(2*R);
%     A = 11033; %for MACl;
    B = (cSub)/(2*R);
    C = (sSub - cSub - cSub*log(298.15)+2*R*log(2))/(2*R);
    
    
    
    if (~exist('T3', 'var'))&&(exist('T2', 'var'))       %MAI
       pressure1 = (-A./T1 + B.*log(T1) + C);
       pressure2 = (-(2*R*A - htr)./(2*R.*T2) + B.*log(T2) + (2*C*R-str)/(2*R));
       cells = {[T1; pressure1]', [T2; pressure2]'};
       disp('ok')
    elseif (exist('T2', 'var'))&&(exist('T3', 'var'))    %MABr
       pressure1 = (-A./T1 + B.*log(T1) + C);
       pressure2 = (-(2*R*A - htr1)./(2*R.*T2) + B.*log(T2) + (2*C*R-str1)/(2*R));
       pressure3 = (-(2*R*A - htr1-htr2)./(2*R.*T3) + B.*log(T3) + (2*C*R-str1-str2)/(2*R));
       cells = {[T1; pressure1]', [T2; pressure2]', [T3; pressure3]'};
    else                                                 %MACl
       pressure1 = (-A./T1 + B.*log(T1) + C);
       cells = {[T1; pressure1]'};
    end
    
end
  