% =========================================================================
% SCRIPT OCTAVE PARA COMPARAR DIFERENTES PERSISTÊNCIAS DO CHOQUE (RHO)
% =========================================================================
clear all;
clc;

% 1. Configurar o caminho do Dynare (ajuste para a sua pasta real se necessário)
addpath('C:\dynare\6.x\matlab')

% 2. Rodar a primeira simulação com o arquivo base (rho = 0.95 de fábrica)
dynare rbc_basico.mod noclearall

% Salva o caminho de resposta do PIB (Y) e Consumo (C) para o cenário de Alta Persistência
Y_alta_persistencia = oo_.irfs.Y_e_A;
C_alta_persistencia = oo_.irfs.C_e_A;

% 3. Alterar o parâmetro rho diretamente na memória do Dynare para Baixa Persistência
set_param_value('rho', 0.50);

% 4. Rodar novamente apenas a resolução matemática e simulação (sem remontar o modelo)
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);

% Salva os resultados para o cenário de Baixa Persistência
Y_baixa_persistencia = oo_.irfs.Y_e_A;
C_baixa_persistencia = oo_.irfs.C_e_A;

% =========================================================================
% 5. PLOTAR A COMPARAÇÃO DOS DOIS CENÁRIOS
% =========================================================================
figure('Name', 'Impacto da Persistência do Choque de Produtividade');

% Gráfico do PIB (Y)
subplot(2,1,1);
plot(Y_alta_persistencia, 'b', 'LineWidth', 2); hold on;
plot(Y_baixa_persistencia, 'r--', 'LineWidth', 2);
title('Resposta do PIB (Y) a um Choque de Produtividade');
legend('Alta Persistência (\rho = 0.95)', 'Baixa Persistência (\rho = 0.50)');
ylabel('Desvio do Steady State');
grid on;

% Gráfico do Consumo (C)
subplot(2,1,2);
plot(C_alta_persistencia, 'b', 'LineWidth', 2); hold on;
plot(C_baixa_persistencia, 'r--', 'LineWidth', 2);
title('Resposta do Consumo (C) a um Choque de Produtividade');
legend('Alta Persistência (\rho = 0.95)', 'Baixa Persistência (\rho = 0.50)');
xlabel('Trimestres');
ylabel('Desvio do Steady State');
grid on;
