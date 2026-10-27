// =========================================================================
// 1. DECLARAÇÃO DE VARIÁVEIS
// =========================================================================
var Y C K L I A;     // Endógenas: Produto, Consumo, Capital, Trabalho, Investimento, Tecnologia
varexo e_A;          // Exógena: O choque estrutural na produtividade

// =========================================================================
// 2. DECLARAÇÃO E CALIBRAÇÃO DOS PARÂMETROS
// =========================================================================
parameters beta delta alpha rho sigma_e;

beta    = 0.99;     // Taxa de desconto intertemporal (trimestral)
delta   = 0.025;    // Taxa de depreciação do capital (2.5% ao trimestre)
alpha   = 0.33;     // Fração do capital na renda nacional
rho     = 0.95;     // Persistência do choque de produtividade
sigma_e = 0.01;     // Desvio padrão do choque (1%)

// =========================================================================
// 3. O MODELO (Equações Econômicas)
// =========================================================================
model;

  // [E1] Equação de Euler do Consumo
  1/C = beta * (1/C(+1)) * (alpha * Y(+1)/K + (1 - delta));

  // [E2] Oferta de Trabalho (Trade-off Consumo/Lazer simplificado)
  // Aqui assumimos utilidade log no consumo e desutilidade linear no trabalho
  (1 - alpha) * Y / L = C;

  // [E3] Função de Produção Cobb-Douglas
  Y = A * (K(-1)^alpha) * (L^(1-alpha));

  // [E4] Identidade da Renda Nacional (PIB = Consumo + Investimento)
  Y = C + I;

  // [E5] Lei de Acumulação do Capital
  K = (1 - delta) * K(-1) + I;

  // [E6] Processo AR(1) da Produtividade (em logaritmos)
  log(A) = rho * log(A(-1)) + e_A;

end;

// =========================================================================
// 4. ESTADO ESTACIONÁRIO (Valores Iniciais para o Solver)
// =========================================================================
initval;
  A = 1;
  L = 0.33;
  K = 10;
  Y = 1;
  C = 0.8;
  I = 0.2;
end;

// =========================================================================
// 5. COMANDOS DE EXECUÇÃO
// =========================================================================
steady;       // Calcula o Steady State exato a partir dos valores iniciais
check;        // Verifica as condições de estabilidade (Blanchard-Kahn)

// Define o choque: um impulso de 1 desvio padrão em e_A no período 1
shocks;
  var e_A = sigma_e^2;
end;

// Roda a simulação estocástica e gera os gráficos (IRFs) por 40 períodos
stoch_simul(periods=0, irf=40);
