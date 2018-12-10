function prob1 ()
load Popularity.mat;

%Problema 1
U =unique(Area);
SU = size(U);
Freq = zeros(SU);
%Frecuencias
for i=1:SU(1)
    map=Area==U(i);
    Freqs(i) = sum(sum(map));
end
Freqs;
%frecuencia acumulada
suma_freq=zeros(3,1);
suma_freq(1,1)=Freqs(1,1);
suma_freq(2,1)=Freqs(1,1)+Freqs(1,2);
suma_freq(3,1)=suma_freq(2,1)+Freqs(1,3);
suma_freq;
%frecuencia relativa
relativa= zeros(3,1);
relativa_acumulada=zeros(3,1);
for i=1:3
    relativa(i,1) = Freqs(1,i)/478;
    relativa_acumulada(i,1) = suma_freq(i,1)/478;
end
%Tabal de frecuencias
Tablal_Freqs = [U, Freqs',suma_freq,relativa,relativa_acumulada];

frecuencias = Freqs';
Area = {'1)Urbana';'2)Suburbana';'3)Rural'};
table(Area, frecuencias,suma_freq,relativa,relativa_acumulada)
