%newsdata and stock movement in same day
clear all;
% X are 4 variables of newsdata
X = csvread('polarity_specific_cal.csv',1,1);
% Y is stcok movement label as 0/1
Y = csvread('stocklabel.csv',1,0);
%use logistic function and get label L
P = logistic(X,Y);
%calculate the accuracy 
A = accuracy(Y,P,1989);



% X1 are 4 variables of newsdata(each day compared with last day)
X1 = [];
for i = 2:1989
    newsdata = X(i,:)-X(i-1,:);
    X1 = [X1;newsdata];
end

%C1 are 4 variables of newsdata(each day change rate compared with last
%day)
C = [];
for i = 1:1988
    newsdata1 = X1(i,1)/X(i,1);
    newsdata2 = X1(i,2)/X(i,2);
    newsdata3 = X1(i,3)/X(i,3);
    newsdata4 = X1(i,4)/X(i,4);
    C = [C;newsdata1,newsdata2,newsdata3,newsdata4];
end

% Y1 is stcok movement label as 0/1(except the first one)
Y1 = csvread('stocklabel.csv',2,0);

P1 = logistic(X1,Y1);
A1 = accuracy(Y1,P1,1988);

%X2 are first 3 variables of newsdata
X2 = csvread('polarity_specific_cal.csv',1,1,[1,1,1989,3]);
P2 = logistic(X2,Y);
A2 = accuracy(Y,P2,1989);

%X3 are the first 3 compared variable of newsdata
X3 = X1(:,1:3);
P3 = logistic(X3,Y1);
A3 =accuracy(Y1,P3,1988);

%X4 are the compund variable of newsdata
X4 = X(:,4);
P4 = logistic(X4,Y);
A4 = accuracy(Y,P4,1989);

%X5 are the compared compund variable of newsdata
X5 = X1(:,4);
P5 = logistic(X5,Y1);
A5 = accuracy(Y1,P5,1988);

%C are change rate of 4 variables
Xtrain = X(1:1600,1);
Xtest = X(1601:end,1);
Ytrain = Y(1:1600,1);
Ytest = Y(1601:end,1);
Ctrain = C(1:1600,1);
Ctest = C(1601:end,1);











