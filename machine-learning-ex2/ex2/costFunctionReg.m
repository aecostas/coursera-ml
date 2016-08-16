function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

h = sigmoid(theta'*X');

J = (1/m)*sum(-y'.*log(h) - (1-y').*log(1-h)) + (lambda/(2*m))*sumsq(theta(2:length(theta),1) );

%grad(1) = (1/m)*sum( (h'-y).*X(:,1))

%for theta_j = 2:length(theta)
%  grad(theta_j) = (1/m)*sum( (h'-y).*X(:,theta_j)) + (lambda/m)*theta_j;
%end

z = X*theta;
d = (lambda/m)*theta;

grad = 1/m *((sigmoid(z)-y)'*X)' + d ;

grad(1) = 1/m *((sigmoid(z)-y)'*X)'(1); % re-update first element of grad


% =============================================================

end
