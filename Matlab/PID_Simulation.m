clear; clc; clf;

options = odeset('RelTol', 1e-4, 'AbsTol', [1e-5 1e-5]);
[t, y] = ode45(@PI_Model, [0 150], [0 0], options);

[t2, y2] = ode45(@PID_Model, [0 150], [0 0], options);

figure (1);
plot (t2, y2(:, 1) * (3600 / 1000), 'r', t, y(:, 1) * (3600 / 1000), 'b');
legend('PID', 'PI');
xlabel ('time (s)');
ylabel ('speed (km/h)');
title ('speed plot');