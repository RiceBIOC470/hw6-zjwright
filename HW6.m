%HW6
clear all; close all;
% Problem 1. Curve fitting. 
% Part 1. Take 10 x values on the interval 0 < x <= 10 and then create y
% values from the x values by plugging the x values into a third order
% polynomial of your choice. Add random noise to the data by choosing a random number
% in the interval [-D, D]. Start with D = 1. Plot your data in the x-y plane.
x=sort(rand(1,10)*10);
y=x.^3+x.^2+x+((1+ rand.*2)-2);
figure(1)
plot(x,y, 'MarkerSize', 20)
hold on;
% Part 2. Fit your data with polynomials from order 1 to 9. Plot the fitted
% polynomials together with the data. 
[fit_out1,fit_metric1] = fit(x', y', 'poly1');
plot(fit_out1, x, y);
[fit_out2,fit_metric2] = fit(x', y', 'poly2');
plot(fit_out2, x, y);
[fit_out3,fit_metric3] = fit(x', y', 'poly3');
plot(fit_out3, x, y);
[fit_out4,fit_metric4] = fit(x', y', 'poly4');
plot(fit_out4, x, y);
[fit_out5,fit_metric5] = fit(x', y', 'poly5');
plot(fit_out5, x, y);
[fit_out6,fit_metric6] = fit(x', y', 'poly6');
plot(fit_out6, x, y);
[fit_out7,fit_metric7] = fit(x', y', 'poly7');
plot(fit_out7, x, y);
[fit_out8,fit_metric8] = fit(x', y', 'poly8');
plot(fit_out8, x, y);
[fit_out9,fit_metric9] = fit(x', y', 'poly9');
plot(fit_out9, x, y);
hold off;
% Part 3. On a separate plot, plot the R^2 and adjusted R^2 as a function
% of the order of the polynomial. 
xx=1:9;
yy=[fit_metric1.rsquare,fit_metric2.rsquare,fit_metric3.rsquare,fit_metric4.rsquare,fit_metric5.rsquare,fit_metric6.rsquare,fit_metric7.rsquare,fit_metric8.rsquare,fit_metric9.rsquare];
yy2=[fit_metric1.adjrsquare,fit_metric2.adjrsquare,fit_metric3.adjrsquare,fit_metric4.adjrsquare,fit_metric5.adjrsquare,fit_metric6.adjrsquare,fit_metric7.adjrsquare,fit_metric8.adjrsquare,fit_metric9.adjrsquare];
figure(2)
plot(xx,yy)
hold on
plot(xx,yy2)
hold off
% Part 4. Repeat parts 1 - 3 for D = 10 and D = 1000. Comment on the
% results. 
%D=10
x=sort(rand(1,10)*10);
y=x.^3+x.^2+x+((rand.*20)-10);
figure(3)
plot(x,y, 'MarkerSize', 20)
hold on;
[fit_out1,fit_metric1] = fit(x', y', 'poly1');
plot(fit_out1, x, y);
[fit_out2,fit_metric2] = fit(x', y', 'poly2');
plot(fit_out2, x, y);
[fit_out3,fit_metric3] = fit(x', y', 'poly3');
plot(fit_out3, x, y);
[fit_out4,fit_metric4] = fit(x', y', 'poly4');
plot(fit_out4, x, y);
[fit_out5,fit_metric5] = fit(x', y', 'poly5');
plot(fit_out5, x, y);
[fit_out6,fit_metric6] = fit(x', y', 'poly6');
plot(fit_out6, x, y);
[fit_out7,fit_metric7] = fit(x', y', 'poly7');
plot(fit_out7, x, y);
[fit_out8,fit_metric8] = fit(x', y', 'poly8');
plot(fit_out8, x, y);
[fit_out9,fit_metric9] = fit(x', y', 'poly9');
plot(fit_out9, x, y);
hold off;
xx=1:9;
yy=[fit_metric1.rsquare,fit_metric2.rsquare,fit_metric3.rsquare,fit_metric4.rsquare,fit_metric5.rsquare,fit_metric6.rsquare,fit_metric7.rsquare,fit_metric8.rsquare,fit_metric9.rsquare];
yy2=[fit_metric1.adjrsquare,fit_metric2.adjrsquare,fit_metric3.adjrsquare,fit_metric4.adjrsquare,fit_metric5.adjrsquare,fit_metric6.adjrsquare,fit_metric7.adjrsquare,fit_metric8.adjrsquare,fit_metric9.adjrsquare];
figure(4)
plot(xx,yy)
hold on
plot(xx,yy2)
hold off
%D=1000
x=sort(rand(1,10)*10);
y=x.^3+x.^2+x+((rand.*2000)-1000);
figure(5)
plot(x,y, 'MarkerSize', 20)
hold on;
[fit_out1,fit_metric1] = fit(x', y', 'poly1');
plot(fit_out1, x, y);
[fit_out2,fit_metric2] = fit(x', y', 'poly2');
plot(fit_out2, x, y);
[fit_out3,fit_metric3] = fit(x', y', 'poly3');
plot(fit_out3, x, y);
[fit_out4,fit_metric4] = fit(x', y', 'poly4');
plot(fit_out4, x, y);
[fit_out5,fit_metric5] = fit(x', y', 'poly5');
plot(fit_out5, x, y);
[fit_out6,fit_metric6] = fit(x', y', 'poly6');
plot(fit_out6, x, y);
[fit_out7,fit_metric7] = fit(x', y', 'poly7');
plot(fit_out7, x, y);
[fit_out8,fit_metric8] = fit(x', y', 'poly8');
plot(fit_out8, x, y);
[fit_out9,fit_metric9] = fit(x', y', 'poly9');
plot(fit_out9, x, y);
hold off;
xx=1:9;
yy=[fit_metric1.rsquare,fit_metric2.rsquare,fit_metric3.rsquare,fit_metric4.rsquare,fit_metric5.rsquare,fit_metric6.rsquare,fit_metric7.rsquare,fit_metric8.rsquare,fit_metric9.rsquare];
yy2=[fit_metric1.adjrsquare,fit_metric2.adjrsquare,fit_metric3.adjrsquare,fit_metric4.adjrsquare,fit_metric5.adjrsquare,fit_metric6.adjrsquare,fit_metric7.adjrsquare,fit_metric8.adjrsquare,fit_metric9.adjrsquare];
figure(6)
plot(xx,yy)
hold on
plot(xx,yy2)
hold off
%atD=10, 2nd orderisn't as good as 3rd order, but with D=1000, 2nd order
%gets about as good as 3rd order

% Part 5. Now repeat parts 1-3 but take 100 x values on the interval 0 < x <=
% 10. Comment on the results. 
%D=1
x=sort(rand(1,100)*10);
y=x.^3+x.^2+x+((1+ rand.*2)-2);
figure(7)
plot(x,y, 'MarkerSize', 20)
hold on;
[fit_out1,fit_metric1] = fit(x', y', 'poly1');
plot(fit_out1, x, y);
[fit_out2,fit_metric2] = fit(x', y', 'poly2');
plot(fit_out2, x, y);
[fit_out3,fit_metric3] = fit(x', y', 'poly3');
plot(fit_out3, x, y);
[fit_out4,fit_metric4] = fit(x', y', 'poly4');
plot(fit_out4, x, y);
[fit_out5,fit_metric5] = fit(x', y', 'poly5');
plot(fit_out5, x, y);
[fit_out6,fit_metric6] = fit(x', y', 'poly6');
plot(fit_out6, x, y);
[fit_out7,fit_metric7] = fit(x', y', 'poly7');
plot(fit_out7, x, y);
[fit_out8,fit_metric8] = fit(x', y', 'poly8');
plot(fit_out8, x, y);
[fit_out9,fit_metric9] = fit(x', y', 'poly9');
plot(fit_out9, x, y);
hold off;
xx=1:9;
yy=[fit_metric1.rsquare,fit_metric2.rsquare,fit_metric3.rsquare,fit_metric4.rsquare,fit_metric5.rsquare,fit_metric6.rsquare,fit_metric7.rsquare,fit_metric8.rsquare,fit_metric9.rsquare];
yy2=[fit_metric1.adjrsquare,fit_metric2.adjrsquare,fit_metric3.adjrsquare,fit_metric4.adjrsquare,fit_metric5.adjrsquare,fit_metric6.adjrsquare,fit_metric7.adjrsquare,fit_metric8.adjrsquare,fit_metric9.adjrsquare];
figure(8)
plot(xx,yy)
hold on
plot(xx,yy2)
hold off
%D=10
x=sort(rand(1,100)*10);
y=x.^3+x.^2+x+((rand.*20)-10);
figure(9)
plot(x,y, 'MarkerSize', 20)
hold on;
[fit_out1,fit_metric1] = fit(x', y', 'poly1');
plot(fit_out1, x, y);
[fit_out2,fit_metric2] = fit(x', y', 'poly2');
plot(fit_out2, x, y);
[fit_out3,fit_metric3] = fit(x', y', 'poly3');
plot(fit_out3, x, y);
[fit_out4,fit_metric4] = fit(x', y', 'poly4');
plot(fit_out4, x, y);
[fit_out5,fit_metric5] = fit(x', y', 'poly5');
plot(fit_out5, x, y);
[fit_out6,fit_metric6] = fit(x', y', 'poly6');
plot(fit_out6, x, y);
[fit_out7,fit_metric7] = fit(x', y', 'poly7');
plot(fit_out7, x, y);
[fit_out8,fit_metric8] = fit(x', y', 'poly8');
plot(fit_out8, x, y);
[fit_out9,fit_metric9] = fit(x', y', 'poly9');
plot(fit_out9, x, y);
hold off;
xx=1:9;
yy=[fit_metric1.rsquare,fit_metric2.rsquare,fit_metric3.rsquare,fit_metric4.rsquare,fit_metric5.rsquare,fit_metric6.rsquare,fit_metric7.rsquare,fit_metric8.rsquare,fit_metric9.rsquare];
yy2=[fit_metric1.adjrsquare,fit_metric2.adjrsquare,fit_metric3.adjrsquare,fit_metric4.adjrsquare,fit_metric5.adjrsquare,fit_metric6.adjrsquare,fit_metric7.adjrsquare,fit_metric8.adjrsquare,fit_metric9.adjrsquare];
figure(10)
plot(xx,yy)
hold on
plot(xx,yy2)
hold off
%D=1000
x=sort(rand(1,100)*10);
y=x.^3+x.^2+x+((rand.*2000)-1000);
figure(11)
plot(x,y, 'MarkerSize', 20)
hold on;
[fit_out1,fit_metric1] = fit(x', y', 'poly1');
plot(fit_out1, x, y);
[fit_out2,fit_metric2] = fit(x', y', 'poly2');
plot(fit_out2, x, y);
[fit_out3,fit_metric3] = fit(x', y', 'poly3');
plot(fit_out3, x, y);
[fit_out4,fit_metric4] = fit(x', y', 'poly4');
plot(fit_out4, x, y);
[fit_out5,fit_metric5] = fit(x', y', 'poly5');
plot(fit_out5, x, y);
[fit_out6,fit_metric6] = fit(x', y', 'poly6');
plot(fit_out6, x, y);
[fit_out7,fit_metric7] = fit(x', y', 'poly7');
plot(fit_out7, x, y);
[fit_out8,fit_metric8] = fit(x', y', 'poly8');
plot(fit_out8, x, y);
[fit_out9,fit_metric9] = fit(x', y', 'poly9');
plot(fit_out9, x, y);
hold off;
xx=1:9;
yy=[fit_metric1.rsquare,fit_metric2.rsquare,fit_metric3.rsquare,fit_metric4.rsquare,fit_metric5.rsquare,fit_metric6.rsquare,fit_metric7.rsquare,fit_metric8.rsquare,fit_metric9.rsquare];
yy2=[fit_metric1.adjrsquare,fit_metric2.adjrsquare,fit_metric3.adjrsquare,fit_metric4.adjrsquare,fit_metric5.adjrsquare,fit_metric6.adjrsquare,fit_metric7.adjrsquare,fit_metric8.adjrsquare,fit_metric9.adjrsquare];
figure(12)
plot(xx,yy)
hold on
plot(xx,yy2)
hold off
%now there's like no difference between the different D graphs. 2nd order
%is pretty close, but at least 3rd order is needed to achieve 1

% Problem 2. Basic statistics. 
% Part 1. Consider two different distributions - Gaussian numbers with a mean of
% 0 and variance 1 and Gaussian numbers with a mean of 1 and variance 1.
% (1) Make a plot of the average p-value for the t-test comparing N random
% numbers chosen from each of these two distributions as a function of N.
pval_mean = [];
for ii = 1:100
dist_1 = randn(ii,1);
dist_2 = randn(ii,1)+1;
[is_sig(ii), pval(ii)] = ttest2(dist_1,dist_2);
pval_means(ii)=sum(is_sig(~isnan(is_sig)))/ii;
end
figure(13)
plot((1:100),pval_means);

% Part 2. Now keep the first distribution the same, but vary the mean of
% the second distribution between 0 and 10 with the same variance and
% repeat part one. Make a plot of all of these different curves on the same
% set of axes. What is special about the case where the mean of the second
% distribution is 0? 
pval_means = [];
figure(14)
for m = 0:10
    for ii = 1:100
        dist_1 = randn(ii,1);
        dist_2 = randn(ii,1)*m;
        [is_sig(ii),pval(m+1,ii)] = ttest2(dist_1,dist_2);
        pval_means(ii)=sum(is_sig(~isnan(is_sig)))/ii;
    end
    plot((1:100),pval_means)
    hold on
end
hold off;
%with the second distribution is zero, the two distributions are the same

% Part 3. Now keep the means of the two distributions at 0 and 1 as in part
% 1, but vary the variance of both distributions simultaneiously between 0.1 and 10 and plot the 
% p-values vs the number of numbers drawn as before. Comment on your results.  
pval_mean = [];
figure(15)
for m = 0.1:1:10.1
    for ii = 1:100
        dist_1 = randn(ii,1)*m;
        dist_2 = randn(ii,1)*m;
        [is_sig(ii),pval_mean(m*10,ii)] = ttest2(dist_1,dist_2);
        pval_means(ii)=sum(is_sig(~isnan(is_sig)))/ii;
    end
    plot((1:100),pval_means)
    hold on
end
hold off;

%there's now more variation in each individual line, and the values are a
%good bit higher than the previous graph
