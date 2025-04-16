clc


%% Chargement des données la puissance PV et la consomation maison
load('datas.mat')

%% parametres
rho=1000;
C=4185;
T_ec=60;
T_ef=10;
X=rho*C*(T_ec-T_ef);
delta_t=0.16;
T_achat=0.17/1000*6;
PUISSANCE_Maison=elec;
C_te=1500*600/X;
vec=zeros(1009,1);
resistance=zeros(1009,1);
res_bool=zeros(1009,1);
res_bool(1)=0;
vec(1)=0.15;
resistance(1)=0;

%% Calcul du volume d'eau chaude et la resistance

for i=2:1009
    % On verifie chaque 10 minutes si le volume d'eau chaude totale (0.15) à baisser
    if vec(i-1)<(0.15-C_te)
        resistance(i)=1500;
        res_bool(i)=1;
        vec(i)=vec(i-1)+(res_bool(i)*C_te-ECS(i));
    else
        res_bool(i)=0;
        vec(i)=vec(i-1)+(res_bool(i)*C_te-ECS(i));
        
    end


end