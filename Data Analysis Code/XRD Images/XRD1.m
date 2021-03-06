





fig = scatter(x,Cont, 30, [ 0    0.4470    0.7410]); 
hold on 
scatter(x,PLA01, 30, [1.0, 0.5, 0.0]);
scatter(x,PLA03, 30, [    0.9290    0.6940    0.1250]);
scatter(x,PLA06, 30, [0.4940    0.1840    0.5560]);
scatter(x,PLA10, 30, [  0.4660    0.6740    0.1880]);

set(gca,'fontsize',20)

title('UV-Visible Absorbance of PLA Enhanced MAPbI_3', 'FontSize', 30);
set(xlabel('Wavelength (nm)', 'FontSize', 25));
set(ylabel('Absorbance (a.u.)', 'FontSize', 25));


lng = legend('Control', 'PLA 0.1 mg/mL', 'PLA 0.3 mg/mL', 'PLA 0.6 mg/mL', 'PLA 1.0 mg/mL')
lng.FontSize = 20;
fig = gcf;
fig.PaperUnits = 'inches';
fig.PaperPosition = [ 0 0 12 10];
print('XRD1', '-dpng', '-r0');