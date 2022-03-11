clear all; close all; clc
%Assumptions:
%no test was taken yet
%specificity changes from 99%, 99,9%; 99,99%; 99,999%
%sensitivity = 99%
%prevalence ranges %from 0.001% to 50%

%specificity = P(negative|healthy)
%sensitivity = P(positive|ill)
% P(ill) 
% = P(positive and infected) + P(negative and infected)
% = P(infected)*P(positive|infected) + P(infected)*P(negative| infected)
% = Prevalence* Sensitivity + Prevalence*(1-Sensitivity)
% = ...

p = linspace(0.00001,0.5,1000); %prevalence vector
s = 0.99;

PoI = p*s + p*(1-s); % Probability of infection


plot(p,PoI)
legend('Probability Fred infected')
xlabel('prevalence')
ylabel('Probability that Fred is infected')