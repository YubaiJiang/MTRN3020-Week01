function dy = Model(t, y)

    % parameters
    M = 2000; % kg
    B = 240; % N/(m/s)

    % control input
    % add conditions according to t here
    if t >= 0
        F = 4000; % N
    end
    
    dy = zeros (1, 1);
    
    x1 = y(1);
    
    dy(1) = -B/M*x1 + 1/M*F;

end

