

addpath(genpath('C:\Toolbox\fieldtrip\'))
addpath('C:\Users\Fabri\Documents\Documentos\PhD\Papers\EnProceso\Metodos\Scripts\Simulation\');
addpath('C:\Users\Fabri\Documents\Documentos\PhD\Papers\EnProceso\Metodos\Scripts\Simulation\');
addpath('C:\Users\Fabri\Documents\Documentos\PhD\Papers\EnProceso\Metodos\Scripts\wSMI\SYM\');
addpath('C:\Users\Fabri\Documents\Documentos\PhD\Papers\EnProceso\Metodos\Scripts\wSMI\SMI\');

tipo='id'; %noid   %Select if we use identical or non - identical henon systems

caso='corr_wsmi'; %corr_wsmi %Select if we use corrected or non corrected wSMI script

switch tipo
    
    case 'id'
        
        b=0.3;
        d=0.3;
        
    case 'noid'
        
        b=0.3;
        d=0.1;
        
end

for u=0.01:0.05:1
    
    henongen_func(u,b,d,tipo);
    infile=['C:\Users\Fabri\Documents\Documentos\PhD\Papers\EnProceso\Metodos\Scripts\Mats\signals_' num2str(u) 'coupled' tipo '.mat'];
    outfile=['C:\Users\Fabri\Documents\Documentos\PhD\Papers\EnProceso\Metodos\Scripts\Mats\SYM_signals_' num2str(u) 'coupled' tipo '.mat'];
    Main_func(infile,outfile);
    infile=['C:\Users\Fabri\Documents\Documentos\PhD\Papers\EnProceso\Metodos\Scripts\Mats\SYM_signals_' num2str(u) 'coupled' tipo '.mat'];
    outfile=['C:\Users\Fabri\Documents\Documentos\PhD\Papers\EnProceso\Metodos\Scripts\Mats\SMI_signals_' num2str(u) 'coupled' tipo '_' caso '.mat'];
    
    switch caso
        
        case 'wsmi'
            
            Main_func_SMI(infile,outfile);
            
        case 'corr_wsmi'
            
            Main_func_SMI_corr(infile,outfile);
    end
    
end