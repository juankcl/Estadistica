function prob4()
load Popularity.mat;

%Problema 4
metas = {'1)Notas';'2)Popularidad';'3)Deportes'};
genero = {'Hombre','Mujer'};

es_h_notas =0;
es_h_popularidad=0;
es_h_deportes=0;         
       
es_m_notas =0;
es_m_popularidad=0;
es_m_deportes =0;
%Conteo
for i=1:478
    if Gender(i,1)== 1
        if Goals(i,1) ==1
            es_h_notas = es_h_notas+1;
        elseif Goals(i,1) == 2
            es_h_popularidad = es_h_popularidad+1;
        elseif Goals(i,1) == 3
            es_h_deportes = es_h_deportes+1;
        end
        
    elseif Gender(i,1) == 2 
        if Goals(i,1) ==1
            es_m_notas = es_m_notas+1;
        elseif Goals(i,1) == 2
            es_m_popularidad = es_m_popularidad+1;
        elseif Goals(i,1) == 3
            es_m_deportes = es_m_deportes+1;
        end
    end
end

%Vectores columna       
Men= [es_h_notas; 
es_h_popularidad;
es_h_deportes ; ];    
       
Woman = [es_m_notas ;
es_m_popularidad;
es_m_deportes;];

%Tabla de doble entrada
table(metas, Men, Woman)
%frec relativa
relativa_hombre=Men/478;
relativa_mujer=Woman/478;
table(metas, relativa_hombre, relativa_mujer)
%distribucion marginal absoluta
dm_notas=117+130;
dm_pop=50+91;
dm_deportes= 60+30;

dm_men= 117+50+60;
dm_mujer=130+91+30;
%Distribucion marginal relativa
dmr_notas=.24477+.27197;
dmr_pop=.1046+.19038;
dmr_deportes= .12552 +.062762;

dmr_men=.24477+ .1046+ .12552;
dmr_mujer=.27197+.19038+.062762;

%Creación de vectores
aux= 0;
dist_marginal_abs= [dm_notas;dm_pop;dm_deportes;aux;dm_men;dm_mujer];
dist_marginal_rel= [dmr_notas;dmr_pop;dmr_deportes;aux;dmr_men;dmr_mujer];
nombresz= {'1)Notas';'2)Popularidad';'3)Deportes';'Eje Y';'4)Hombre';'5)Mujeres'};
%TAbular distribuciones y frecuencias
table(nombresz,dist_marginal_abs, dist_marginal_rel )

