R = 8.314;

hfMA = -22.97*1000; %check
cpMA = 51.71; %check

hfMABr = -258.9*1000; %check
cpMABr = 79.2; %check

hfHBr = -36.44*1000; %check
cpHBr = 29.14; %check

sSub = 280; %check
sHBr = 198.7; %check
sMA = 241.54; %check

htr1 = 1.467*1000; %check
htr2 = 3.63*1000;  %check

str1 = htr1/392.1; %check
str2 = htr2/480.8; %check

sstand = -(sSub - sHBr - sMA);
% hSub = -hfMABr + hfHBr + hfMA;
hSub = 196.7*1000;
cSub = -cpMABr + cpHBr + cpMA;

T1 = 298.15:.1:392.1;
T2 = 392.1:.1:480.8;
T3 = 480.8:.1:505;

save('MABr')

% modelCalc()

% A = (hsub - csub*298.15)/(2*R);
% B = (csub)/(2*R);
% C = (ssub - csub - csub*log(298.15)+2*R*log(2))/(2*R);
% 

% 
% pressure1 = (-A./T1 + B.*log(T1) + C);
% pressure2 = (-(2*R*A - htr1)./(2*R.*T2) + B.*log(T2) + (2*C*R-str1)/(2*R));
% pressure3 = (-(2*R*A - htr1-htr2)./(2*R.*T3) + B.*log(T3) + (2*C*R-str1-str2)/(2*R));

% 
% figure
% 
% plot(1./T1, pressure1)
% 
% hold on
% 
% plot(1./T2, pressure2)
% 
% hold on
% 
% plot(1./T3, pressure3)
% 
% title('Vapor Pressure of MAI')
% xlabel('Temperature (K)')
% ylabel('Vapor Pressure ln(P/P0)')
% legend({'Solid Phase I','Solid Phase II', 'Solid Phase III'},'Location','southwest')
% 
% 

