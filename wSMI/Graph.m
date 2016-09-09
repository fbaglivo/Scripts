%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                              %
% This script plot the wSMI versus coupling curve              %
%                                                              %
% Fabricio Baglivo - 2016                                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
close all

mat_path='C:\Users\Fabri\Documents\Documentos\PhD\Papers\EnProceso\Metodos\Scripts\Mats\';


tipo='id'; %noid   %Select if we use identical or non - identical henon systems

caso='wsmi'; %corr_wsmi %Select if we use corrected or non corrected wSMI script


c=0.01:0.05:0.9;

for i = 1 : size(c,2)
   
   A = load([mat_path 'SMI_signals_' num2str(c(i)) 'coupled' tipo '_' caso '.mat'])
   
   for j=1:size(A.SMI.MEAN,2)
       
       SMI(j,i) = cell2mat (A.wSMI.MEAN(j));  %SMI Freq x Coupling
   
   end   
   
end

%%
    
plot(c,SMI);
legend('show')
xlabel('Coupling')
ylabel([caso 'Index - Sistema ' tipo])
saveas(gcf,[caso '_sistema_' tipo], 'eps')