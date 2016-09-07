%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                              %
% This script plot the wSMI versus coupling curve              %
%                                                              %
% Fabricio Baglivo - 2016                                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
close all

mat_path='C:\Users\Fabri\Documents\Documentos\PhD\Papers\EnProceso\Metodos\Scripts\Mats\';

c=0.1:0.1:0.9;

for i = 1 : size(c,2)
   
   A = load([mat_path 'SMI_signals_' num2str(c(i)) 'coupled.mat'])
   
   for j=1:size(A.SMI.MEAN,2)
       
       SMI(j,i) = cell2mat (A.SMI.MEAN(j));  %SMI Freq x Coupling
   
   end   
   
end

%%
    
plot(c,SMI);
legend('show')
xlabel('Coupling')
ylabel('SMI Index')