%{
1) As of early 2018, Usain Bolt holds the world record in the men's 100-meter dash. 
It is 9.58 seconds. What was his average speed in km/h?  
Assign the result to a variable called hundred.


2) Kenyan Eliud Kipchoge set a new world record for men of 2:01:39 on September 16, 2018. 
Assign his average speed in km/h to the variable marathon. The marathon distance is 42.195 kilometers.
%}
format longEng;
time  = 9.58;       % s
time  = time/3600; % h

space = 100;        % m
space = space/1000;  % km

hundred = space/time;
disp(hundred);

%{%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}

hours = 2;
mins  = 1;
secs  = 39;

distance = 42.195;

time = hours + (mins/60) + (secs/3600); % time do decimal

marathon = distance/time;

disp(marathon);