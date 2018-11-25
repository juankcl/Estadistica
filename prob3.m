function prob3()
load Popularity.mat;

%problema 3
de=unique(Grade)'
SD = size(de');
Freqsx = zeros(SD);
%Frecuencias
for i=1:SD(1)
    mape=Grade==de(i);
    Freqsx(i) = sum(sum(mape));
end
Freqsx;

xert=[-2:5];
subplot(3,1,1);
title('Genero'); hold on
histogram(Gender', xert);
nuq = unique(Age);

subplot(3,1,2)
title('Edad'); hold on
histogram(Age', nuq);
nuk = [0:5];

subplot(3,1,3)
title('Metas'); hold on
histogram(Goals', nuk);

% clasificacion
o_con_1y1= 0;
o_con_1y2= 0;
o_con_1y3= 0;
o_con_1y4= 0;

o_con_2y1= 0;
o_con_2y2= 0;
o_con_2y3= 0;
o_con_2y4= 0;


%
n_con_1y1= 0;
n_con_1y2= 0;
n_con_1y3= 0;
n_con_1y4= 0;

n_con_2y1= 0;
n_con_2y2= 0;
n_con_2y3= 0;
n_con_2y4= 0;

%

d_con_1y1= 0;
d_con_1y2= 0;
d_con_1y3= 0;
d_con_1y4= 0;

d_con_2y1= 0;
d_con_2y2= 0;
d_con_2y3= 0;
d_con_2y4= 0;

%
g_con_1y1= 0;
g_con_1y2= 0;
g_con_1y3= 0;
g_con_1y4= 0;

g_con_2y1= 0;
g_con_2y2= 0;
g_con_2y3= 0;
g_con_2y4= 0;

%
t_con_1y1= 0;
t_con_1y2= 0;
t_con_1y3= 0;
t_con_1y4= 0;

t_con_2y1= 0;
t_con_2y2= 0;
t_con_2y3= 0;
t_con_2y4= 0;

%
r_con_1y1= 0;
r_con_1y2= 0;
r_con_1y3= 0;
r_con_1y4= 0;

r_con_2y1= 0;
r_con_2y2= 0;
r_con_2y3= 0;
r_con_2y4= 0;

%

for i=1:478
   if Age(i,1)==7
       
       if Grade(i,1)==4 
           o_con_2y1= o_con_2y1+1;
       elseif Grade(i,1)==5 
           o_con_2y2= o_con_2y2+1;
       elseif Grade(i,1)==6 
           o_con_2y3= o_con_2y3+1;
           
       end
   elseif Age(i,1)==9
       
       if Grade(i,1)==4 
           n_con_2y1= n_con_2y1+1;
       elseif Grade(i,1)==5 
           n_con_2y2= n_con_2y2+1;
       elseif Grade(i,1)==6 
           n_con_2y3= n_con_2y3+1;
 
       
       end
   elseif Age(i,1)==10
       
       if Grade(i,1)==4
           d_con_2y1= d_con_2y1+1;
       elseif Grade(i,1)==5 
           d_con_2y2= d_con_2y2+1;
       elseif Grade(i,1)==6 
           d_con_2y3= d_con_2y3+1;
      
       end
   elseif Age(i,1)==11
       
       if Grade(i,1)==4
           g_con_2y1= g_con_2y1+1;
       elseif Grade(i,1)==5 
           g_con_2y2= g_con_2y2+1;
       elseif Grade(i,1)==6 
           g_con_2y3= g_con_2y3+1;
       end
   elseif Age(i,1)==12
       
       if Grade(i,1)==4 
           t_con_2y1= t_con_2y1+1;
       elseif Grade(i,1)==5 
           t_con_2y2= t_con_2y2+1;
       elseif Grade(i,1)==6
           t_con_2y3= t_con_2y3+1;

       end
   elseif Age(i,1)==13
       
       if Grade(i,1)==4 
           r_con_2y1= r_con_2y1+1;
       elseif Grade(i,1)==5 
           r_con_2y2= r_con_2y2+1;
       elseif Grade(i,1)==6 
           r_con_2y3= r_con_2y3+1;
       end
   end
end
   
   
for i=1:478
   if Age(i,1)==7
       if Sports(i,1)==1 
           o_con_1y1= o_con_1y1+1;
       elseif Sports(i,1)== 2
           o_con_1y2= o_con_1y2+1;
       elseif  Sports(i,1)== 3
           o_con_1y3= o_con_1y3+1;
       elseif Sports(i,1)== 4
           o_con_1y4= o_con_1y4+1;
       end
   elseif Age(i,1)==9
       if  Sports(i,1)==1 
           n_con_1y1= n_con_1y1+1;
       elseif Sports(i,1)== 2
           n_con_1y2= n_con_1y2+1;
       elseif  Sports(i,1)== 3
           n_con_1y3= n_con_1y3+1;
       elseif  Sports(i,1)== 4
           n_con_1y4= n_con_1y4+1;
       end
       
   elseif Age(i,1)==10
       if Sports(i,1)==1 
           d_con_1y1= d_con_1y1+1;
       elseif Sports(i,1)== 2
           d_con_1y2= d_con_1y2+1;
       elseif Sports(i,1)== 3
           d_con_1y3= d_con_1y3+1;
       elseif Sports(i,1)== 4
           d_con_1y4= d_con_1y4+1;
       end
   elseif Age(i,1)==11
       if Sports(i,1)==1 
           g_con_1y1= g_con_1y1+1;
       elseif Sports(i,1)== 2
           g_con_1y2= g_con_1y2+1;
       elseif  Sports(i,1)== 3
           g_con_1y3= g_con_1y3+1;
       elseif  Sports(i,1)== 4
           g_con_1y4= g_con_1y4+1;
       end
   elseif Age(i,1)==12
       if Sports(i,1)==1 
           t_con_1y1= t_con_1y1+1;
       elseif Sports(i,1)== 2
           t_con_1y2= t_con_1y2+1;
       elseif Sports(i,1)== 3
           t_con_1y3= t_con_1y3+1;
       elseif  Sports(i,1)== 4
           t_con_1y4= t_con_1y4+1;
       end
   elseif Age(i,1)==13
       if Sports(i,1)==1 
           r_con_1y1= r_con_1y1+1;
       elseif  Sports(i,1)== 2
           r_con_1y2= r_con_1y2+1;
       elseif  Sports(i,1)== 3
           r_con_1y3= r_con_1y3+1;
       elseif Sports(i,1)== 4
           r_con_1y4= r_con_1y4+1;
       end
   end

end
% clasificacion
%7 años deporte 1
o_con_1y1
%7 años deporte 2
o_con_1y2
%7 años deporte 3
o_con_1y3
%7 años deporte 4
o_con_1y4

%9 años deporte 1
n_con_1y1
%9 años deporte 2
n_con_1y2
%9 años deporte 3
n_con_1y3
%9 años deporte 4
n_con_1y4

%10 años deporte 1
d_con_1y1
%10 años deporte 2
d_con_1y2
%10 años deporte 3
d_con_1y3
%10 años deporte 4
d_con_1y4

%11 años deporte 1
g_con_1y1
%11 años deporte 2
g_con_1y2
%11 años deporte 3
g_con_1y3
%11 años deporte 4
g_con_1y4

%12 años deporte 1
t_con_1y1
%12 años deporte 2
t_con_1y2
%12 años deporte 3
t_con_1y3
%12 años deporte 4
t_con_1y4

%13 años deporte 1
r_con_1y1
%13 años deporte 2
r_con_1y2
%13 años deporte 3
r_con_1y3
%13 años deporte 4
r_con_1y4

%7 años grado 4
o_con_2y1
%7 años grado 5
o_con_2y2
%7 años grado 6
o_con_2y3
%
%9 años grado 4
n_con_2y1
%9 años grado 5
n_con_2y2
%9 años grado 6
n_con_2y3
%
%10 años grado 4
d_con_2y1
%10 años grado 5
d_con_2y2
%10 años grado 6
d_con_2y3

%
%11 años grado 4
g_con_2y1
%11 años grado 5
g_con_2y2
%11 años grado 6
g_con_2y3
%
%12 años grado 4
t_con_2y1
%12 años grado 5
t_con_2y2
%12 años grado 6
t_con_2y3
%
%13 años grado 4
r_con_2y1
%13 años grado 5
r_con_2y2
%13 años grado 6
r_con_2y3
%

fut=[];

