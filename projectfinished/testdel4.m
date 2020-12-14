%========================================
% Testskript för del 4
% Använd tol=0.5e-3 i Newton-Raphson
% =======================================

pass=true;
tstart=tic;

% Testfall E_to_speed
v1=round(E_to_speed(100,10),2);
v2=round(E_to_speed(100,50),2);
v3=round(E_to_speed(300,160),2);
if (v1==11.72 && v2==54.40 && v3==158.36)
    disp('E_to_speed OK!');
else
    disp('Fel i E_to_speed, passerade inte testerna.');
    pass=false;
end

% Testfall charge
x1=round(charge(1000,'speed_anna',10,400),1);
x2=round(charge(5000,'speed_anna',30,400),1);
y1=round(charge(1000,'speed_elsa',10,400),1);
y2=round(charge(5000,'speed_elsa',30,400),1);
if (x1==7.8 && x2==30.7 && y1==8.5 && y2==37.9)
    disp('charge OK!')
else
    disp('Fel i charge, passerade inte testerna.');
    pass=false;
end

t=toc(tstart);
disp(['Körtid = ' num2str(t) 's']);
if (t>1.0)
    disp('Koden är ineffektiv, se över koden och effektivisera den.');
    pass=false;
elseif (t>0.1 && t<=1.0)
    disp('Koden kan förmodligen effektivseras men inte nödvändigt');
    disp('eller möjligtvis kan datorn vara långsam.');
else
    disp('Bra, effektiv kod!');
end

if pass
    disp(' ');
    disp('Grattis, koderna passerade testerna!');
    disp('Kom ihåg att indentera, kommentera och strukturera upp koderna');
    disp('samt att använda vettiga variabelnamn.');
end