function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;

% size(X, 2) = # of columns in matrix X
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%     

% X(:, 1) = all values of x_1 (house sizes in the training set)
% X(:, 2) = all values of x_2 (# of bedrooms in the training set)
meanOfHousePrices = mean(X(:, 1));
meanOfBedrooms = mean(X(:, 2));
mu(:, 1) = meanOfHousePrices;
mu(:, 2) = meanOfBedrooms;

% subtract each feature within the data set with it's mean
X_norm(:, 1) = X_norm(:, 1) .- meanOfHousePrices;
X_norm(:, 2) = X_norm(:, 2) .- meanOfBedrooms;

standardDeviationOfHousePrices = std(X(:, 1));
standardDeviationOfBedrooms = std(X(:, 2));
sigma(:, 1) = standardDeviationOfHousePrices;
sigma(:, 2) = standardDeviationOfBedrooms;

X_norm(:, 1) = X_norm(:, 1) ./ standardDeviationOfHousePrices;
X_norm(:, 2) = X_norm(:, 2) ./ standardDeviationOfBedrooms;

% ============================================================

end