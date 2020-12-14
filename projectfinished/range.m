function r = range(x, route, charge, n)
% r = range(x, route, charge, n)
% Input: sträcka, rutt, laddningsmängd vid start, intervall. Output:
% Återstående räckvidd.
% Wh/km - tot: 85 * 10^3
consumedEnergy = tot_consumption(x, route, n);
energyLeft = charge - consumedEnergy;

timeDriven = time_to_destination(x, route, n);
meanConsumption = consumedEnergy / timeDriven;

rangeLeft =  energyLeft / meanConsumption;
r = rangeLeft;