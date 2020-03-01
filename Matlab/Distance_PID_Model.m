function dx = Distance_PID_Model(t, x)
    M = 2000; % kg
    B = 240; % N/(m/s)
    Kp = 40;
    Ki = 0.2;
    Kd = 500;

    x_in = 5000;

    error = x_in - x(1);
    
    dx = zeros(3, 1);
    dx(1) = x(2);
    dx(2) = -(B/M)*x(2) + 1/M*(Kp * error + Ki * x(3) + Kd * (-x(2)));
    dx(3) = error;



end

