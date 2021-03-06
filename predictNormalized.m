function p = predictNormalizedBetween(Theta1, Theta2, X, X_max, X_min, from, to, y_max, y_min)


% Normalize input
X_norm = from + ((X - X_min)*(to-from))./(X_max - X_min);

% Useful values
m = size(X_norm, 1);
% num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X_norm, 1), 1);

h1 = [ones(m, 1) X_norm] * Theta1';
h2 = [ones(m, 1) h1] * Theta2';

% size(h2)
% [dummy, p] = max(h2, [], 2);

% Denormalize output
% p = h2;
% printf('h2: ');
% h2

p = (((h2-from).*(y_max-y_min)) / (to-from) ) + y_min;


% =========================================================================


end