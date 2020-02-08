clear all, clc, close all
X = [
1000, 100
1000, 125
2000, 111
3000, 120
3500, 150
4000, 140

1000, 230
1000, 210
2000, 220
3000, 240
3500, 230
4000, 210

8100, 120
8500, 100
10000, 110
10500, 150
11500, 140
12000, 100

8100, 220
8500, 240
10000, 210
10500, 270
11500, 230
12000, 220
]*10;
X(:,1) = X(:,1)+50000;
X(:,1) = X(:,1)/1000;
X(:,2) = X(:,2)/1000;
% plot(X(:,1),X(:,2),'k*','MarkerSize',6);

[idx,C] = kmeans(X,2);
idx

%%  Original Data
figure
% plot(C(:,1), C(:,2), 'k^', 'markersize', 12, 'MarkerFaceColor',[0 0 0])
% hold on
idx1 = find(idx == 1);
idx2 = find(idx == 2);
plot(X(:,1),X(:, 2),'k.','MarkerSize',18);
legend('Original Data')
% legend('Cluster Center', 'Original Data')
axis([40 180 0.8 3])
title 'Debt vs. Income';
xlabel 'Income (\times 1000$)';
ylabel 'Debt (\times 1000$)';

%%  After K-means Clustering
figure
plot(C(:,1), C(:,2), 'k^', 'markersize', 12, 'MarkerFaceColor',[0 0 0])
hold on
idx1 = find(idx == 1);
idx2 = find(idx == 2);
plot(X(idx1,1),X(idx1, 2),'r.','MarkerSize',18);
plot(X(idx2,1),X(idx2,2),'b.','MarkerSize',18);
legend('Cluster Center', 'Cluster red', 'Cluster blue')
axis([40 180 0.8 3])
title 'Debt vs. Income';
xlabel 'Income (\times 1000$)';
ylabel 'Debt (\times 1000$)';

%% further reading
fprintf('for further reading, please refer to link  https://www.analyticsvidhya.com/blog/2019/08/comprehensive-guide-k-means-clustering/')
