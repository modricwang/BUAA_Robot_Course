function w = get_w(speed, myev3)
    time_interval = 2.0;
    mymotor = motor(myev3, 'A');
    start(mymotor)
    mymotor.Speed = speed;
    resetRotation(mymotor)
    theta = readRotation(mymotor);
    pause(time_interval)
    theta = readRotation(mymotor) - theta;
    stop(mymotor)
    w = double(theta / time_interval);
