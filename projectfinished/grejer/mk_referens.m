year=[2005:2010]';
temp=[6.8721 7.4800 7.1296 7.4792 6.6066 4.8430]';
mu=mean(year);
sigma=std(year);
year2=(year-mu)/sigma;
A=[ones(size(year2)) year2 year2.^2 year2.^3];
c=(A'*A)\(A'*temp);
time=2005:0.1:2010;
modeltemp=c(1)+c(2)*(time-mu)/sigma+c(3)*((time-mu)/sigma).^2+c(4)*((time-mu)/sigma).^3;
plot(year,temp,'bs');
hold on;
plot(time,modeltemp,'r-');