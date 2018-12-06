fc=100;
passo=1/fc;
dur=2;
t=[0:passo:dur-passo];
f=50;
w=f*2*pi;
y=cos(w*t);
stem(t,y);
