clear all; close all; clc
%Assumptions:
%no test was taken yet
%sensitivity changes between 99%, 99,9%; 99,99%; 99,999%
%specificity = 99%,
%prevalence ranges %from 0.001% to 50%

%specificity = P(negative|healthy)
%sensitivity = P(positive|ill)
% P(ill) 
% = P(positive and infected) + P(negative and infected)
% = P(infected)*P(positive|infected) + P(infected)*P(negative|infected)
% = Prevalence* Sensitivity + Prevalence*(1-Sensitivity)
% = ...

p = linspace(0.00001,0.5,10)'; %prevalence vector
s99 = 0.99;% sensitivities
s999 = 0.999;
s9999 = 0.9999;
s99999 = 0.99999;

PoI99 = p*s99 + p*(1-s99); % Probability of infection for sensitivity 99%
PoI999 = p*s999 + p*(1-s999);%Probability of infection for sensitivity 99.9%
PoI9999 = p*s9999 + p*(1-s9999);%...
PoI99999 = p*s99999 + p*(1-s99999);%...

figure
subplot(2,2,1)
plot(p, PoI99,'--')
xlabel('prevalence')
ylabel('Probability that Fred is infected')
legend('Probability of Fred being infected')
subplot(2,2,2)
plot(p, PoI999,'--')
xlabel('prevalence')
ylabel('Probability that Fred is infected')
legend('Probability of Fred being infected')
subplot(2,2,3)
plot(p, PoI9999,'--')
xlabel('prevalence')
ylabel('Probability that Fred is infected')
legend('Probability of Fred being infected')
subplot(2,2,4)
plot(p, PoI99999,'--')
xlabel('prevalence')
ylabel('Probability that Fred is infected')
legend('Probability of Fred being infected')