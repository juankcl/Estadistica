function[prob1,prob2,prob3,prob4]=muescreem(num)
disp('MUESTREO CON REEMPLAZO');
lanzar=ceil(4*rand(num,1));
band1=0;
band2=0;
band3=0;
band4=0;
prob1=0;
prob2=0;
prob3=0;
prob4=0;
for i=1:num
    if lanzar(i,1)==1
        band1=band1+1;
    end
    if lanzar(i,1)==2
        band2=band2+1;
    end
    if lanzar(i,1)==3
        band3=band3+1;
    end
    if lanzar(i,1)==4
        band4=band4+1;
        
    end
end

prob1=band1/num;
prob2=band2/num;
prob3=band3/num;
prob4=band4/num;
disp('PROBABILIDAD CALCULADA POR SIMULACION');
sprintf('Probabilidad de cara 1: %f ',prob1)
sprintf('Probabilidad de cara 2: %f ',prob2)
sprintf('Probabilidad de cara 3: %f ',prob3)
sprintf('Probabilidad de cara 4: %f ',prob4)
x=[band1,band2,band3,band4];
bar(x,'RED')
title('LANZAMIENTOS VS CARAS')
xlabel('CARAS DEL DADO')
ylabel('NUMERO LANZAMIENTOS')