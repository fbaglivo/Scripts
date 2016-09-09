% Programa para generar sinusoides acopladas
%
% Fabricio Baglivo 2016



clear all
close all
clc


%%

t=1:1:10001;
phase=10;


x=sin(2*pi*10*t/512);
y=sin(2*pi*10*t/512+phase);
plot(x)
hold on
plot(y,'r')

%%

signal(:,1)=x;
signal(:,2)=y;

%%

cd ..
save(['Mats/signals_' num2str(phase) 'sinusoid.mat'], 'signal','phase');