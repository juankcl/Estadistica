function prob2()
load Popularity.mat;

%Problema 2
V=unique(Gender);
SV = size(V);
Freqss = zeros(SV);
%Frecuencias
for i=1:SV(1)
    mapa=Gender==V(i);
    Freqss(i) = sum(sum(mapa));
end
Freqss
subplot(1,2,1)
pie(Freqss);
title('Numero de hombres(azul) y mujeres(verde)');
range=[1,2];
subplot(1,2,2)
bar(Freqss, range );

chico_u=0;
chica_u=0;

for i=1:478
    if Gender(i,1)== 1
        if Area(i,1)== 1
            chico_u=chico_u+1;
        end
    else
        if Area(i,1)== 1
            chica_u=chica_u+1;
        end
    end
end

table({'Proporcion de chicos y chicas areas urbanas'},chico_u,chica_u)