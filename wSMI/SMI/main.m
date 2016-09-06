% Main script for wSMI calculation
%
%


input_files={'C:\Users\Fabri\Documents\Documentos\PhD\Papers\EnProceso\Metodos\Scripts\Mats\SYM_signals_0.5coupled.mat'};
output_files={'C:\Users\Fabri\Documents\Documentos\PhD\Papers\EnProceso\Metodos\Scripts\Mats\SMI_signals_0.5coupled.mat'};


cond(1).name=[ input_files{1} ];
cond(1).nameout=[ output_files{1}];

time = do_MI_final(cond.name,cond.nameout);


