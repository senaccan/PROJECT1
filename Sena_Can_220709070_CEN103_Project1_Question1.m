%Sena Can
%220709070
%Computer Engineering
%MBI103|1189381|Introduction to Programming
%Project 1
%Fall 2023
%Asst. Prof. Deniz DAL
clc; %Clears the command window before calculation is performed
currentStock=input('Enter the current price of the stock: '); %The current price of the stock is entered by the user
timeToMaturity=6; %Maturity period is given as 6 months
riskFreeInterestRate=5/100; %The risk-free interest rate is given as 5%
aNormalDistributionD1=93/100; %N(d1)=N(1.46)=0.93
aNormalDistributionD2=85/100; %N(d2)=N(1.03)=0.85

while currentStock<0 %The stock price should not be less than zero
    fprintf('Please enter a positive value.\n');
    currentStock=input('Enter the current price of the stock: ');
end

if currentStock>=0 %Stock price must be greater than zeroclc
    strikePrice=currentStock+(currentStock*10/100); %Strike price must be 10% above the current price of the stock
    callOptionPrice=(currentStock*aNormalDistributionD1)-(strikePrice*(exp((-1)*riskFreeInterestRate*timeToMaturity))*aNormalDistributionD2);
    fprintf('Call Option Price is: %g \n', callOptionPrice);
end