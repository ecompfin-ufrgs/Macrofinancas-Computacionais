import numpy as np
from scipy.optimize import minimize

# 1. Geração de dados sintéticos (Simulação para teste do estimador)
np.random.seed(42)
N = 500  # Aumentado para 500 para melhorar a consistência do GMM

# Simulando crescimento do consumo (c_{t+1}/c_t) e retornos brutos (R_{t+1})
# Em uma economia de Lucas, essas variáveis são positivamente correlacionadas
c_growth = np.random.normal(1.02, 0.02, N) 
retorno_ativo = 1.05 + 0.5 * (c_growth - 1.02) + np.random.normal(0, 0.01, N)

# Instrumento: Vetor de uns (Momento básico: E[Erro] = 0)
# Para GMM com identificação exata (2 parâmetros, 2 momentos), poderíamos usar c_growth defasado.
instrumentos = np.array([np.ones(N), c_growth]).T 

def condicoes_momento(params, c_growth, retorno_ativo, instrumentos):
    beta_est, gamma_est = params
    
    # Equação de Euler: beta * (c_{t+1}/c_t)^(-gamma) * R_{t+1} - 1 = 0
    # Calculando o erro para cada observação
    sdf = beta_est * (c_growth**(-gamma_est))
    erros = sdf * retorno_ativo - 1.0
    
    # g_N: média dos erros ponderada pelos instrumentos
    # Erros possui dimensão (N,), instrumentos possui (N, k)
    momentos = np.zeros(instrumentos.shape[1])
    for i in range(instrumentos.shape[1]):
        momentos[i] = np.mean(erros * instrumentos[:, i])
        
    return momentos

def funcao_objetivo_gmm(params, c_growth, retorno_ativo, instrumentos):
    # Restrição teórica: beta e gamma devem ser positivos
    if params[0] <= 0 or params[1] < 0:
        return 1e10
    
    momentos = condicoes_momento(params, c_growth, retorno_ativo, instrumentos)
    
    # Função de perda: g_N' * W * g_N (usando matriz de peso Identidade)
    # W = Identidade é o ponto de partida padrão para o GMM em dois estágios
    valor_objetivo = np.dot(momentos, momentos)
    return valor_objetivo

# 2. Execução da Estimação
# Chute inicial: Beta próximo de 1, Gamma (aversão ao risco) em torno de 1 a 2
chute_inicial = [0.95, 1.5]

# Limites para garantir validade econômica (0 < beta < 1)
limites = ((0.7, 0.999), (0.1, 10.0))

resultado = minimize(
    funcao_objetivo_gmm, 
    chute_inicial, 
    args=(c_growth, retorno_ativo, instrumentos), 
    bounds=limites, 
    method='L-BFGS-B'
)

# 3. Resultados
beta_otimo, gamma_otimo = resultado.x

print("--- Estimação via GMM (CCAPM de Lucas) ---")
print(f"Beta (Fator de Desconto) estimado: {beta_otimo:.4f}")
print(f"Gamma (Aversão ao Risco) estimado: {gamma_otimo:.4f}")
print(f"Convergência: {resultado.success}")
print(f"Valor final da função objetivo: {resultado.fun:.8e}")
