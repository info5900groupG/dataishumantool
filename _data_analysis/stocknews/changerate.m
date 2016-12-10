%newsdata and stock movement in same day
clear all;
% X are 4 variables of newsdata
X = csvread('polarity_specific_cal.csv',1,1);
% Y is stcok movement label as 0/1
Y = csvread('stocklabel.csv',1,0);

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

%train and test dataset 1
Ytrain1 = Y(2:1601,1);
Ytest1 = Y(1602:end,1);
Ctrain1 = C(1:1600,1);
Ctest1 = C(1601:end,1);

%train and test dataset 2
Ytrain2 = Y(390:end,1);
Ytest2 = Y(2:389,1);
Ctrain2 = C(389:end,1);
Ctest2 = C(1:388,1);

%logistic1 and accuracy 1
P1 = logistic1(Ctrain1,Ytrain1,Ctest1);
A1 = accuracy(P1, Ytest1, 388);


%logistic1 and accuracy
P2 = logistic1(Ctrain2,Ytrain2,Ctest2);
A2 = accuracy(P2, Ytest2, 388);

