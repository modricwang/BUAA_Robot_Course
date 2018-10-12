myev3 = legoev3('usb');
mymotor = motor(myev3, 'A');

for i = 0:12
    w = get_w(1 * 10, myev3);
    disp(num2str(w))
end
