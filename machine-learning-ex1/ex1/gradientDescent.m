function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

 % ====================== YOUR CODE HERE ======================
% Instructions: Perform a single gradient step on the parameter vector
%               theta. 
%
% Hint: While debugging, it can be useful to print out the values
%       of the cost function (computeCost) and gradient here.
%
% created new array with new values of theta
  theta_updated = zeros(length(theta),1);
  h=theta'*X';

  for theta_j = 1:length(theta)
    theta_updated(theta_j) = theta(theta_j) - (alpha/m)*sum(  (h'-y).*X(:,theta_j)  );
  end
  
  theta=theta_updated;
  % Save the cost J in every iteration    
  J_history(iter) = computeCost(X, y, theta);
    
end

end
