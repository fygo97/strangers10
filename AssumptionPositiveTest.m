clear all; close all; clc
%Assumptions:
%positive test was taken
%sensitivity changes between 99%, 99,9%; 99,99%; 99,999%
%specificity = 99%,
%prevalence ranges %from 0.001% to 50%

%specificity = P(negative|healthy)
%sensitivity = P(positive|infected)

% Since Fred took a test that came back negative we have 
%P(infected|positive)
% = P(infected and positive)/P(positive) by Bayes
%
% P(positive) = P(healthy and positive) + P(infected and positive)
%             = (1-prevalence)*(1-speficity) + prevalence*sensitivity

% Remark: I assumed, that if the interpretation of the exercise, in which we should
% compute "P(infected) after Fred recieved a positive test result" meant
% P(infected|positive) and not P( (infected|positive) |positive). 

p = linspace(0.00001,0.5,10)'; %prevalence vector
one = ones(length(p),1);
sp99 = 0.99;% specificity
sp999 = 0.999;
sp9999 = 0.9999;
sp99999 = 0.99999;


PoI99 = (one-p)*(1-sp99) + p*0.99; % Probability of infection for sensitivity 99%
PoI999 = (one-p)*(1-sp999) + p*0.99;%Probability of infection for sensitivity 99.9%
PoI9999 = (one-p)*(1-sp9999) + p*0.99;%...
PoI99999 = (one-p)*(1-sp99999) + p*0.99;%...

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