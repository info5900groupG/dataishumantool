function Output = logistic(X,Y)
B = glmfit(X,Y,'binomial','link','logit');
Z = B(1,1)+X*B(2:end,1);
A = 1 ./ (1 + exp(-Z));
Output = ceil(A-0.5);

