function dy = P_Model(t, y)

    % parameters
    M = 2000; % kg
    B = 240; % N/(m/s)

    % control input
    % add conditions according to t here
    
    v_in = 60 /3.6;
    Kp = 4000/v_in; % N/(m/s)
    
    
    
    dy = zeros (1, 1);
    
    x1 = y(1);
    
    dy(1) = -B/M*x1 + 1/M*Kp*(v_in - x1);

end
