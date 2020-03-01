function dy = PID_Model(t, y)

    % parameters
    M = 2000; % kg
    B = 240; % N/(m/s)
    
    
    % control input
    % add conditions according to t here
    
    v_in = 60 / 3.6; % 60 km/hr
    Kp = 4000/v_in; % N/(m/s)
    Ki = 50;
    Kd = -500;
    
    error = v_in - y(1);
    
    
    dy = [0; 0];
    dy(1) = (-B/M*y(1) + 1/M*(Kp*error + Ki*y(2)))/(1+Kd/M);
    dy(2) = error;

end
