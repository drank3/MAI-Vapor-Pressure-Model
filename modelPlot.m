clear

%Change the text to match whichever halide you want (ie MAI, MABr, MACl)
res = modelCalc('MABr');

%MAX_ecp loads whatever experimental vapor pressure values are availabe
%(only for Br and Cl so far)

 load MABr_exp.mat 

figure

% plots every element of the piecewise function
for i = 1:length(res)
    res{i}(:, 2) = res{i}(:, 2); %conversion from ln(p*) to torr
   
    
    %inverts temp
    %res{i}(:, 1) = 1./res{i}(:, 1);
    plot(res{i}(:, 1), res{i}(:, 2))
    hold on
end

% to invert the temp scale of the exp values and plot them
%  MABr_exp(:, 1) = 1./MABr_exp(:, 1);
 MABr_exp(:, 2) = MABr_exp(:, 2);

 


title('Vapor Pressure of MABr')
xlabel('Temperature (K)')
ylabel('ln(p/p0)')
legend({'Solid Phase I','Solid Phase II', 'Solid Phase III'},'Location','southwest')
scatter(MABr_exp(:, 1), MABr_exp(:, 2))
hold off
