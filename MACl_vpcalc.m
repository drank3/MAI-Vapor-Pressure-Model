R = 8.314;

hfMA = -22.97*1000; %check
cpMA = 51.71; %check

hfMACl = -298.3*1000; %check
cpMACl = 90.918; %check

hfHCl = -92.312*1000; %check
cpHCl = 29.136; %check

sHCl = 186.901; %check
sMA = 241.54; %check
sMACl = 138.62; %check


sSub = 279.4; %check
%hSub = -hfMACl + hfHCl + hfMA;
hsub = 180.5 *1000; %check
cSub = -cpMACl + cpHCl + cpMA; %check

T1 = 298.15:.1:500;

save('MACl')


