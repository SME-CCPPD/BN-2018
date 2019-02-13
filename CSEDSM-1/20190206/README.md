# CSEDSM 1 - Lezione del 6 febbraio 2018

## Argomenti


## Lavagne

![whiteboard 1](./BN_TFG_2019-02-06_10.52.54_1.jpg)

![whiteboard 2](./BN_TFG_2019-02-06_10.52.54_2.jpg)

## Esempi `matlab`

Filtro FIR del prim'ordine (filtro di media):

```matlab
fc=1;
step=0.01
W=[0:step:fc*2*pi-step];
H=1+e.^(-i*W);
plot(W,H);
```

La funzione di trasferimento di tale filtro è espressa nel grafico che segue:

![one zero funzione di trasferimento](./one_zero.jpg)

Test del filtro FIR di prim'ordine:

```matlab
fc=1000;
dur=10;
sinc=1/fc;
t=[0:sinc:dur-sinc];
X=rand(1,length(t))*2-1;
Y=zeros(1,length(t));
for k=2:length(t)
  Y(k)=(X(k)+X(k-1))/2;
  end
binsize=fc/length(t);
F=[0:binsize:fc-binsize];
Yfft=fft(Y);
mag=20*log10(abs(Yfft))/length(t);
plot(F,mag);

```

Il grafico risultante da questo codice è il seguente:

![one zero test con rumore bianco](./one_zero_test.jpg

Filtro FIR *comb* passivo del prim'ordine (con `delay = 7 campioni`):

```matlab
fc=1;
step=0.01
W=[0:step:fc*2*pi-step];
m=7
H=1+e.^(-i*W*m);
plot(W,H);
```

La funzione di trasferimento di tale filtro è espressa nel grafico che segue:

![comb funzione di trasferimento](./comb.jpg)

