clear

MA_mm = 0; %g/mol
PbI2_mm = 0;

MA_rad = 0;
PbI2_rad = 0;



Na = 6.022 * 10^23; %Avogadro's number
Kb = 0; %Boltzmann's constant


V = 0; %Good luck Bubba
n

res = modelCalc('MAI');
res = [res{1}(:, 1) res{1}(:, 2); res{2}(:, 1) res{2}(:, 2)];
res(:, 2) = exp(res(:, 2)).*760;
Vp = res(:, 2);
T = res(:, 1);

cs = pi*(MA_rad + PbI2_rad)^2;
u = (MA_mass*PbI2_mass)/(MA_mass + PbI2_mass);

Z = n_MA*n_PbI2*cs*sqrt( (8*kb*T)/(pi*u) );

