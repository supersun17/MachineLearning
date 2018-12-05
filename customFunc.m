function cf = customFunc;
	cf.getList = @getList;
	cf.costFunctionJ = @costFunctionJ;
endfunction;

function f1 = getList(x1,x2);
	f1 = x1:1:x2;
endfunction;

function J = costFunctionJ(X,y,theta);
	m = size(X,1);
	predictions = X * theta;
	sqrErrors = (predictions - y) .^ 2;
	J = 1 / (2 * m) * sum(sqrErrors);
endfunction;
