%newsdata in advance of one day
clear all;

% X are 4 variables of newsdata
originalX = csvread('polarity_specific_cal.csv',1,1);
% Y is stcok movement label as 0/1
originalY = csvread('stocklabel.csv',1,0);

% Y are the sceond day's stock movement label of X
X = originalX(1:end-1,1:4);
Y = originalY(2:end,1);
%use logistic function and get label L
P = logistic(X,Y);
%calculate the accuracy 
A = accuracy(Y,P,1988);



% X1 are 4 variables of newsdata(each day compared with last day)
X1 = [];
for i = 2:1988
    newsdata = X(i,:)-X(i-1,:);
    X1 = [X1;newsdata];
end
    
% Y1 is stcok movement label as 0/1(except the first one)
Y1 = Y(2:end,:);

P1 = logistic(X1,Y1);
A1 = accuracy(Y1,P1,1987);

%X2 are first 3 variables of newsdata
X2 = X(:,1:3);
P2 = logistic(X2,Y);
A2 = accuracy(Y,P2,1988);

%X3 are the first 3 compared variable of newsdata
X3 = X1(:,1:3);
P3 = logistic(X3,Y1);
A3 =accuracy(Y1,P3,1987);

%X4 are the compund variable of newsdata
X4 = X(:,4);
P4 = logistic(X4,Y);
A4 = accuracy(Y,P4,1988);

%X5 are the compared compund variable of newsdata
X5 = X1(:,4);
P5 = logistic(X5,Y1);
A5 = accuracy(Y1,P5,1987);
