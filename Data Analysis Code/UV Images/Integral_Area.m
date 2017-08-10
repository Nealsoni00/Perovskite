
x = [0, 0.1, 0.3, 0.6, 1.0]
Cont = 236.3584355
PLA01 = 233.9734525
PLA03 = 292.4820235
PLA06 = 257.738301
PLA10 = 305.125285

PCDTBT01 = 241.9758455
PCDTBT03 = 251.405149
PCDTBT06 = 284.395918
PCDTBT10 = 304.819192


data = [Cont, PLA01, PLA03, PLA06, PLA10]
data2 = [Cont, PCDTBT01, PCDTBT03, PCDTBT06, PCDTBT10]


fig = scatter(x,data2, 80, [ 0    0.4470    0.7410]); 
h = lsline
set(h, 'LineWidth',2)
set(h, 'Color','b')

p = polyfit(x,data2,1);
a = p(1)
b = p(2)
polyfit_str = ['y = ' num2str(a) 'x + ' num2str(b)]
text(.5,300,polyfit_str, 'fontsize', 20);


set(gca,'fontsize',20)

title('UV-Visible Absorbance Integral of PCDTBT Enhanced MAPbI_3', 'FontSize', 30);
set(xlabel('Concentration (mg/mL)', 'FontSize', 25));
set(ylabel('Integral Area', 'FontSize', 25));


fig = gcf;
fig.PaperUnits = 'inches';
fig.PaperPosition = [ 0 0 13 10];
print('IntegralAreaPCDTBT', '-dpng', '-r0');