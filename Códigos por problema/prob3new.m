function prob3new ()
load popularity.mat
meta_notas4 = 0;
meta_notas5 = 0;
meta_notas6 = 0;
meta_notas7 = 0;
meta_notas9 = 0;
meta_notas10 = 0;
meta_notas11 = 0;
meta_notas12 = 0;
meta_notas13 = 0;
meta_popu4 = 0;
meta_popu5 = 0;
meta_popu6 = 0;
meta_popu7 = 0;
meta_popu9 = 0;
meta_popu10 = 0;
meta_popu11 = 0;
meta_popu12 = 0;
meta_popu13 = 0;
meta_depo4 = 0;
meta_depo5 = 0;
meta_depo6 = 0;
meta_depo7 = 0;
meta_depo9 = 0;
meta_depo10 = 0;
meta_depo11 = 0;
meta_depo12 = 0;
meta_depo13 = 0;

for i=1:478
    if Goals(i,1) == 1
        if Grade(i,1) == 4
            meta_notas4 = meta_notas4+1;
        elseif Grade(i,1) == 5
            meta_notas5= meta_notas5+1;
        else meta_notas6=meta_notas6+1;
        end
        
        if Age(i,1) == 7
            meta_notas7 = meta_notas7+1;
        elseif Age(i,1) == 9
            meta_notas9 = meta_notas9+1;
        elseif Age(i,1) == 10
            meta_notas10 = meta_notas10+1;
        elseif Age(i,1) == 11
            meta_notas12 = meta_notas11+1;
        elseif Age(i,1) == 12
            meta_notas12 = meta_notas12+1;
        elseif Age(i,1) == 13
            meta_notas13 = meta_notas13+1;
        end
    end
    if Goals(i,1) == 2
        if Grade(i,1) == 4
            meta_popu4 = meta_popu4+1;
        elseif Grade(i,1) == 5
            meta_popu5= meta_popu5+1;
        else meta_popu6=meta_popu6+1;
        end
        
        if Age(i,1) == 7
            meta_popu7 = meta_popu7+1;
        elseif Age(i,1) == 9
            meta_popu9 = meta_popu9+1;
        elseif Age(i,1) == 10
            meta_popu10 = meta_popu10+1;
        elseif Age(i,1) == 11
            meta_popu11 = meta_popu11+1;
        elseif Age(i,1) == 12
            meta_popu12 = meta_popu12+1;
        elseif Age(i,1) == 13
            meta_popu13 = meta_popu13+1;
        end
    end
    if Goals(i,1) == 3
        if Grade(i,1) == 4
            meta_depo4 = meta_depo4+1;
        elseif Grade(i,1) == 5
            meta_depo5= meta_depo5+1;
        else meta_depo6=meta_depo6+1;
        end
        
        if Age(i,1) == 7
            meta_depo7= meta_depo7+1;
        elseif Age(i,1) == 9
            meta_depo9 = meta_depo9+1;
        elseif Age(i,1) == 10
            meta_depo10 = meta_depo10+1;
        elseif Age(i,1) == 11
            meta_depo11 = meta_depo11+1;
        elseif Age(i,1) == 12
            meta_depo12 = meta_depo12+1;
        elseif Age(i,1) == 13
            meta_depo13 = meta_depo13+1;
        end
    end
end
freq= [meta_notas4, meta_notas5 , meta_notas6];
freq2 = [meta_popu4, meta_popu5, meta_popu6];
freq3= [meta_depo4, meta_depo6, meta_depo6];
vector2= [4,5,6];

freq4 = [meta_notas7, meta_notas9, meta_notas10, meta_notas11, meta_notas12, meta_notas13];
freq5 = [meta_popu7, meta_popu9, meta_popu10, meta_popu11, meta_popu12, meta_popu13];
freq6= [meta_depo7, meta_depo9, meta_depo10, meta_depo11, meta_depo12, meta_depo13];
vector3 =[7,9,10,11,12,13];

figure
subplot(3,1,1)
title('Meta "notas" por grado'); hold on
bar(vector2,freq);

subplot(3,1,2)
title('Meta "popularidad" por grado'); hold on
bar(vector2,freq2);

subplot(3,1,3)
title('Meta "deportes" por grado'); hold on
bar(vector2,freq3);

figure
subplot(3,1,1)
title('Meta "notas" por edad'); hold on
bar(vector3,freq4);

subplot(3,1,2)
title('Meta "popularidad" por edad'); hold on
bar(vector3,freq5);

subplot(3,1,3)
title('Meta "deportes" por edad'); hold on
bar(vector3,freq5);


%variables grades y sport por edad
%{
suma=0
for i=1:478
    if Age(i,1)==13
        if Sports(i,1)==4
            suma=suma+1;
        end
    end
end
suma
%}

de4con7=1;
de4con9=97;
de4con10=20;
de4con11=1;
de5con9=3;
de5con10=112;
de5con11=58;
de5con12=3;
de6con11=130;
de6con12=49;
de6con13=4;

sumfx1= 1091;
prom_edad4= sumfx1/119
sumfx2=1821;
prom_edad5=sumfx2/176
sumfx3= 2070;
prom_edad6=sumfx3/183

cuarto=[de4con7;
de4con9;
de4con10;
de4con11;0;0];

quinto=[0;de5con9;
de5con10;
de5con11;
de5con12;0 ];

sexto=[0;0;0;de6con11;
de6con12
de6con13;];

edad = {'7';'9';'10';'11';'12';'13'};

table(edad,cuarto,quinto,sexto)


muy_importante= [0;25;49;69;27;1];
importante=     [1;29;43;69;10;2];
poco_importante=[0;33;26;40;13;0];
nada_importante=[0;13;14;17;2;1];

table(edad,muy_importante,importante,poco_importante,nada_importante)

sumxf4=1811;
prom_edad_muy_imp=sumxf4/171
prom_edad_imp= 1603/154
prom_edad_poco_i=1153/112
prom_edad_nada_i=481/47

table(prom_edad4,prom_edad5,prom_edad6,prom_edad_muy_imp,prom_edad_imp, prom_edad_poco_i, prom_edad_nada_i)