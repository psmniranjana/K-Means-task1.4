% Load the Iris dataset 
load fisheriris; 

% Combine the four features into a matrix 
X = [meas(:,1), meas(:,2), meas(:,3), meas(:,4)]; 

% Apply k-means clustering with k=3 
k = 3; 
[idx, centroids] = kmeans(X, k); 

% Plot the results 
figure; 
gscatter(X(:,1), X(:,2), idx, 'bgr', '.', 10); 
hold on; 
plot(centroids(:,1), centroids(:,2), 'kx', 'MarkerSize', 15, 'LineWidth', 3); 
legend('Cluster 1', 'Cluster 2', 'Cluster 3', 'Centroids'); 
title('K-Means Clustering Results'); 
xlabel('Sepal Length'); 
ylabel('Sepal Width');