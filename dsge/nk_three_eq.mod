// =========================================================================
// Modelo Novo-Keynesiano de 3 Equações (Nível Graduação)
// Resolução e Funções Impulso-Resposta (IRF) via Dynare / Octave
// =========================================================================

// 1. Declaração das Variáveis Endógenas
var y      // Hiato do Produto (Output Gap)
    pi     // Taxa de Inflação
    i      // Taxa de Juros Nominal
    r      // Taxa de Juros Real
    g      // Choque de Demanda Exógeno (Processo AR1)
    u      // Choque de Oferta Exógeno / Custo (Processo AR1)
    v;     // Choque de Política Monetária Exógeno (Processo AR1)

// 2. Declaração das Variáveis Exógenas (Inovações/Choques i.i.d.)
varexo eps_g   // Inovação do choque de demanda
       eps_u   // Inovação do choque de custo
       eps_v;  // Inovação do choque de política monetária

// 3. Declaração dos Parâmetros do Sistema
parameters beta sigma kappa phi_pi phi_y rho_g rho_u rho_v;

// Calibração Básica (Valores usuais na literatura de graduação)
beta   = 0.99;   // Fator de desconto intertemporal (implica juros de ~4% ao ano)
sigma  = 1.00;   // Inverso da elasticidade de substituição intertemporal
kappa  = 0.127;  // Inclinação da Curva de Phillips (grau de rigidez de preços)
phi_pi = 1.50;   // Resposta à inflação na Regra de Taylor (Satisfaz Blanchard-Kahn)
phi_y  = 0.50;   // Resposta ao hiato do produto na Regra de Taylor
rho_g  = 0.80;   // Persistência do choque de demanda
rho_u  = 0.70;   // Persistência do choque de custo
rho_v  = 0.50;   // Persistência do choque de política monetária

// 4. Bloco de Equações Estruturais (Linearizadas em torno do Steady State)
model;

  // [Equação 1] Curva IS Dinâmica
  y = y(+1) - (1/sigma)*(i - pi(+1)) + g;

  // [Equação 2] Curva de Phillips Novo-Keynesiana (NKPC)
  pi = beta*pi(+1) + kappa*y + u;

  // [Equação 3] Regra de Taylor (Conduta do Banco Central)
  i = phi_pi*pi + phi_y*y + v;

  // [Equação Auxiliar] Definição da Taxa de Juros Real de Fisher
  r = i - pi(+1);

  // [Leis de Movimento] Processos AR(1) dos Choques Exógenos
  g = rho_g*g(-1) + eps_g;
  u = rho_u*u(-1) + eps_u;
  v = rho_v*v(-1) + eps_v;

end;

// 5. Condições de Estado Estacionário (Steady State)
// Como o sistema está linearizado em desvios, o steady state de todas as variáveis é 0.
steady_state_model;
  y  = 0;
  pi = 0;
  i  = 0;
  r  = 0;
  g  = 0;
  u  = 0;
  v  = 0;
end;

// 6. Matriz de Variância-Covariância dos Choques (Desvios Padrão de 1%)
shocks;
  var eps_g = 0.01^2;
  var eps_u = 0.01^2;
  var eps_v = 0.01^2;
end;

// 7. Comando de Verificação das Condições de Estabilidade (Blanchard-Kahn)
// O comando 'check' computa os autovalores e valida a unicidade do equilíbrio.
check;

// 8. Solução Computacional e Simulação das IRFs
// order=1 realiza uma aproximação linear de primeira ordem.
// irf=20 gera as Funções Impulso-Resposta para 20 períodos à frente.
stoch_simul(order=1, irf=20, noprint);
