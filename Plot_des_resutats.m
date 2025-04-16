
OptimisationEnergetique
% Ouvrir une nouvelle figure
figure;
startDate = datetime('2024-01-01 00:00');
dates = startDate + minutes(0:10:(10*1008));  % ou minutes(0:10:10080)
% Tracé du 1er signal
subplot(2,2,1);  
plot(dates, out.PV_vers_maison.Data, 'b');  
title('Puissance PV');                         
xlabel('jours');                        
ylabel('Amplitude ( Watts)');                       
legend('Consommation Maison');                            

% Tracé du 2ème signal
subplot(2,2,2);
plot(dates, out.PV_vers_Ballon.Data, 'r');  
title('Puissance PV');
xlabel('jours');
ylabel('Amplitude ( Watts)');
legend('Consommation Ballon');

% Tracé du 3ème signal
subplot(2,2,3);
plot(dates, out.Reseau_vers_Maison.Data, 'g');  
title('Puissance Reseau');
xlabel('jours');
ylabel('Amplitude ( watts)');
legend('Consommation Maison');

% Tracé du 4ème signal
subplot(2,2,4);
plot(dates, out.Surplus_vers_Reseau.Data, 'm');  % Tracé en magenta
title('Surplus vers à vendre');
xlabel('jours');
ylabel('Amplitude (watts)');
legend('Puissance totale restée');
