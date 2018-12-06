# CSEDSM 1 - Lezione del 5 dicembre 2018

## Argomenti

* Introduzione a `octave`
* Ripasso del teorema del campionamento:
  * aliasing
  * foldover

## Lavagne

![whiteboard 1](./BN_I_CSEDSM_1_2018-12-05_11.54.29.jpg)

## Esempi `matlab`

[cosinusoide a frequenza di nyquist](./Camp1.m)

```matlab
fc=100;
passo=1/fc;
dur=2;
t=[0:passo:dur-passo];
f=50;
w=f*2*pi;
y=cos(w*t);
stem(t,y);
```

Questo script realizza il seguente plot:

![Camp1.m plot](./Camp1.jpg)
