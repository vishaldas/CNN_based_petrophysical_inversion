function [h, gammas] = variogram1d(value, epsilon, x)

% Analyze input
nSamples = numel(value);

% Initialize defaults
if ~exist('x', 'var'); x = 1:nSamples; end
if ~exist('epsilon', 'var'); epsilon = .01; end

% Maje sure they are column vectors
value = value(:);
x     = x(:);


distance = pdist(x);

% build the index matrix
indexMatrix = [];
for i = 2:nSamples
    firstPoint = i:nSamples;
    secondPoimt = ones(size(firstPoint)) * (i-1);
    extra = [firstPoint ; secondPoimt]';
    indexMatrix = [indexMatrix; extra];
end



maxH = round(nSamples/4);

h = 1:maxH;
ccs = zeros(1,numel(maxH));
gammas = zeros(1,numel(maxH));
for i = h
analyzedDistance = abs(distance-i) <= epsilon;
firstPoint = value(indexMatrix(analyzedDistance,1));
secondPoint = value(indexMatrix(analyzedDistance,2));
%scatter(firstPoint, secondPoint, 'fiiled'); box on;
gamma = 1/(2*numel(firstPoint)) * sum((firstPoint - secondPoint).^2);
cc = corrcoef(firstPoint, secondPoint);
ccs(i) = cc(2);
gammas(i) = gamma;
end

figure('Color', 'White')
scatter(h, gammas, 'filled', 'FaceColor', 'black');
box on;
xlabel('Lag Distance (h)');
ylabel('Semivariogram (\gamma)');
ylimits = ylim;
ylimits(1)= 0;
ylim(ylimits);


end