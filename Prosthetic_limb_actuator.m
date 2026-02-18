clc;
clear;
close all;

% Parameters
zeta = 0.7;        % Damping ratio
wn = 5;            % Natural frequency (rad/s)

% Transfer Function
num = [1];
den = [1 2*zeta*wn wn^2];

sys = tf(num, den);

% Impulse Response
figure;
impulse(sys);
title('Impulse Response of Prosthetic Limb Actuator');
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;
