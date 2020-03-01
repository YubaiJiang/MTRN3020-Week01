
options = odeset('RelTol', 1e-4, 'AbsTol', [1e-5 1e-5]);
[t, y] = ode45(@PI_Model, [0 150], [0 0], options);

figure (1);
plot (t, y(:, 1) * (3600 / 1000), 'b');
xlabel ('time (s)');
ylabel ('speed (km/h)');
title ('speed plot');