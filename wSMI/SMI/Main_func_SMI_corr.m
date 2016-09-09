function Main_func_SMI_corr(input_files,output_files)

% Main script for wSMI calculation
%
%
% 
% 
% input_files={'C:\Users\Fabri\Documents\Documentos\PhD\Papers\EnProceso\Metodos\Scripts\Mats\SYM_signals_1sinusoid.mat'};
% output_files={'C:\Users\Fabri\Documents\Documentos\PhD\Papers\EnProceso\Metodos\Scripts\Mats\SMI_signals_1sinusoid.mat'};


cond(1).name=[ input_files ];
cond(1).nameout=[ output_files];

time = do_MI_final_corr(cond.name,cond.nameout);


end