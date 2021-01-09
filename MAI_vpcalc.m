R = 8.314;

hfMA = -22.97*1000; %check
cpMA = 51.71; %check

hfMAI = -200.7*1000; %check
cpMAI = 94.1; %check

hfHI = 26.359*1000; %check
cpHI = 29.156; %check

sSub = 280; %probably
sHI = 206.589; %check
sMA = 241.54; %check

htr = 6.13*1000; %check
str = 14.8; %check

sstand = -(sSub - sHI - sMA);
hSub = -hfMAI + hfHI + hfMA;
cSub = -cpMAI + cpHI + cpMA;

T1 = 298.15:.5:414.8;
T2 = 414.8:.5:445;


save('MAI')

% 
% 
% A = (hsub - csub*298.15)/(2*R);
% B = (csub)/(2*R);
% C = (ssub - csub - csub*log(298.15)+2*R*log(2))/(2*R);
% 

% pressure1 = (-A./T1 + B.*log(T1) + C);
% pressure2 = (-(2*R*A - htr)./(2*R.*T2) + B.*log(T2) + (2*C*R-str)/(2*R));
% 
% 
% figure
% 
% plot(1./T1, pressure1)
% 
% hold on
% 
% plot(1./T2, pressure2)
% 
% title('Vapor Pressure of MAI')
% xlabel('Temperature (K)')
% ylabel('Vapor Pressure (P/P0)')
% legend({'Solid Phase I','Solid Phase II'},'Location','southwest')



