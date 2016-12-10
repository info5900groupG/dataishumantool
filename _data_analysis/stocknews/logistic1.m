function Output = logistic1(Xtrain,Ytrain,Xtest)
B = glmfit(Xtrain,Ytrain,'binomial','link','logit');
Z = B(1,1)+Xtest*B(2:end,1);
A = 1 ./ (1 + exp(-Z));
Output = ceil(A-0.5);