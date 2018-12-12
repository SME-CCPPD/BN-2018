fc=100;
fc2=1000;
passo2=1/fc2;
passo=1/fc;
dur=0.5;
t=[0:passo:dur-passo];
t2=[0:passo2:dur-passo2];
f=110;
w=f*2*pi;
y=cos(w*t);
y2=cos(w*t2);
y3=cos(10*2*pi*t2);
hold on
stem(t,y);
plot(t2,y2,t2,y3)
axis([0 0.05])
hold off

