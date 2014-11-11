%% Name
% Aldo Mendez, 
% SID: 23684204

%% Plots
xin_uniform_10 = linspace(-1,1,11); %n=10
xin_chebyshev_10 = cos(linspace(-pi,0,11));
xin_uniform_19 = linspace(-1,1,20); %n=19
xin_chebyshev_19 = cos(linspace(-pi,0,20));
xin_uniform_50 = linspace(-1,1,51); %n=50
xin_chebyshev_50 = cos(linspace(-pi,0,51));
xin_uniform_99 = linspace(-1,1,100); %n=100
xin_chebyshev_99 = cos(linspace(-pi,0,100));
xout = linspace(-1,1,500);
f = @(x) 1.0 ./ (1+9*x.^2);
yout_uniform_10 = int_poly_p1(f,xin_uniform_10,xout);
yout_chebyshev_10 = int_poly_p1(f,xin_chebyshev_10,xout);
yout_uniform_19 = int_poly_p1(f,xin_uniform_19,xout);
yout_chebyshev_19 = int_poly_p1(f,xin_chebyshev_19,xout);

yout1_chebyshev_50 = int_poly_p1(f,xin_chebyshev_50,xout);
yout2_chebyshev_50 = int_poly_p2(f,xin_chebyshev_50,xout);

yout1_chebyshev_99 = int_poly_p1(f,xin_chebyshev_99,xout);
yout2_chebyshev_99 = int_poly_p2(f,xin_chebyshev_99,xout);

yout1_uniform_50 = int_poly_p1(f,xin_uniform_50,xout);
yout2_uniform_50 = int_poly_p2(f,xin_uniform_50,xout);

yout1_uniform_99 = int_poly_p1(f,xin_uniform_99,xout);
yout2_uniform_99 = int_poly_p2(f,xin_uniform_99,xout);

figure

subplot(2,2,1)
plot(xout,f(xout),'r',xout,yout_uniform_10,'b')
legend('f(x)','p(x)')
title('n=10,Uniform')
xlabel('x')
ylabel('y')

subplot(2,2,2)
plot(xout,f(xout),'r',xout,yout_chebyshev_10,'b')
legend('f(x)','p(x)')
title('n=10, Chebyshev')
xlabel('x')
ylabel('y')


subplot(2,2,3)
plot(xout,f(xout),'r',xout,yout_uniform_19,'b')
legend('f(x)','p(x)')
title('n=19,Uniform')
xlabel('x')
ylabel('y')

subplot(2,2,4)
plot(xout,f(xout),'r',xout,yout_chebyshev_19,'b')
legend('f(x)','p(x)')
title('n=19, Chebyshev')
xlabel('x')
ylabel('y')

figure

subplot(2,2,1)
semilogy(xout,1.0e-18+abs([yout1_uniform_50-f(xout);yout2_uniform_50-f(xout)]),'linewidth',1)
legend('Lagrange','Barycentric')
title('n=50,Uniform, semilogy')
xlabel('x')
ylabel('log(y)')

subplot(2,2,2)
semilogy(xout,1.0e-18+abs([yout1_uniform_99-f(xout);yout2_uniform_99-f(xout)]),'linewidth',1)
legend('Lagrange','Barycentric')
title('n=99,Uniform, semilogy')
xlabel('x')
ylabel('log(y)')

subplot(2,2,3)
semilogy(xout,1.0e-18+abs([yout1_chebyshev_50-f(xout);yout2_chebyshev_50-f(xout)]),'linewidth',1)
legend('Lagrange','Barycentric','location','southwest')
title('n=50,Chebyshev, semilogy')
xlabel('x')
ylabel('log(y)')

subplot(2,2,4)
semilogy(xout,1.0e-18+abs([yout1_chebyshev_99-f(xout);yout2_chebyshev_99-f(xout)]),'linewidth',1)
legend('Lagrange','Barycentric')
title('n=99,Chebyshev, semilogy')
xlabel('x')
ylabel('log(y)')
