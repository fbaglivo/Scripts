function Main_func(input_files,output_files)

% Main Scrtip for symbolic transform that calls S_trsnfs.m.
% Files with signal matrices have to been referenced in this 
% script. Also cfg structure with Symbolic transformation 
% parameters should be defined.
%
% Results file will be saved into files that should be named 
% during this srcipt.
%
% Fabricio Baglivo 2016
% 
% clc
% clear all
% close all

%%

% 
% input_files={'C:\Users\Fabri\Documents\Documentos\PhD\Papers\EnProceso\Metodos\Scripts\Mats\signals_0.5coupled.mat'};
% output_files={'C:\Users\Fabri\Documents\Documentos\PhD\Papers\EnProceso\Metodos\Scripts\Mats\SYM_signals_0.5coupled.mat'};


    load(input_files);
    
    
    cfg.kernel = 3; %% kernel , para poner el kernel == 4 hay que corregir PE_paralel!
    cfg.chan_sel = 1:2 ;  %% all channels
    cfg.data_sel = 1:size(signal,1); %% all samples
    cfg.sf = 512; %% sampling frequency
    cfg.taus = [1 2 4 8 16]; %
   
    Signal(:,:,1)=signal';
    Signal(:,:,2)=signal';
    
    for j=1

        [sim(j).data ,kount(j).data ] = S_Transf(Signal,cfg);

        sym=sim(j).data;
        count=kount(j).data;

        save(output_files,'sym' ,'count')

    end

end

