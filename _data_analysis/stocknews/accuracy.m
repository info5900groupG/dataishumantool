function output = accuracy(X,Y,size)
output = 1-(X-Y)'*(X-Y)/size;