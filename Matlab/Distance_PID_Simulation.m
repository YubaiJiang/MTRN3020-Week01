clear; clc;

options = odeset('RelTol', 1e-4, 'AbsTol', [1e-5 1e-5 1e-5]);
[t, x] = ode45(@Distance_PID_Model, [0 150], [0 0 0], options);

figure (1);
plot (t, x(:, 1), 'b');
xlabel ('time (s)');
ylabel ('distance(m)');
title ('speed plot');