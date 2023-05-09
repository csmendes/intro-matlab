%{ 
    We borrowed $1000 at a 10% annual interest rate. 
    If we did not make a payment for two years, and assuming there is no penalty 
    for non-payment, how much do we owe now? Assign the result to a variable called debt. 
%}


% formula 
%{
    A = P*(1+r/n)^(n*t) 

    A = Valor acumulado (principal + juros)
    P = Valor principal
    r = Taxa de juros nominal anual em decimal
    R = Taxa de juros nominal anual em percentual
    r = R/100
    n = número de períodos compostos por unidade de tempo
    t = tempo em anos decimais; por exemplo, 6 meses é calculado como 0,5 anos. Divida o número de meses do ano parcial por 12 para obter os anos decimais.
%}

value = 1000;
tax   = 10/100;
time  = 2;

debt = value * (1 + tax/1)^((1)*(2));
disp(debt);