

options = odeset('RelTol', 1e-4, 'AbsTol', 1e-5);
[t, y] = ode45(@P_Model, [0 150], 0, options);

figure (1);
plot (t, y(:, 1)*3.6, 'b');
xlabel ('time (s)');
ylabel ('speed (km/h)');
title ('speed plot');