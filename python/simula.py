import numpy as np

# 1. Definição da estrutura de informação (8 estados finais / trajetórias)
# Período 2: 8 nós (folhas da árvore)
dividendos_t2 = np.array([1.2, 0.8, 1.5, 0.9, 1.1, 0.7, 1.4, 1.0])
# Probabilidades de transição do Período 1 para o Período 2 (condicionais)
# Cada par de filhos soma 1.0 (ex: 0.5 + 0.5)
prob_t2_cond = np.array([0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5]) 

# Período 1: 2 nós intermediários (nós pais)
dividendos_t1 = np.array([1.0, 0.9]) 
# Probabilidades de transição da Raiz para o Período 1
prob_t1_cond = np.array([0.6, 0.4]) 

# Período 0: Raiz da árvore
dividendo_t0 = 1.0

# Parâmetros de Preferência do Agente
beta = 0.96
gamma = 2.0  # Coeficiente de Aversão Relativa ao Risco (CRRA)

def utilidade_marginal(c, gamma):
    """Calcula u'(c) para uma função de utilidade CRRA."""
    return c ** (-gamma)

# 2. Cálculo Backward dos Preços de Equilíbrio (Indução Retroativa)

# No Período T (2), o preço é zero pois a economia acaba
preco_t2 = np.zeros(8) 

# Cálculo dos Preços no Período 1 (2 nós: A_11 e A_12)
preco_t1 = np.zeros(2)
for i in range(2):
    u_prime_t1 = utilidade_marginal(dividendos_t1[i], gamma)
    soma_expectativa = 0.0
    
    # Cada pai i tem 4 filhos no total (8/2), mas aqui 
    # estamos considerando uma árvore binária onde cada nó abre em 2.
    # Para 8 estados finais em T=2, o Período 1 deve ter 4 nós ou o Período 2 ter saltos maiores.
    # Ajuste didático: i=0 cuida dos estados 0-3, i=1 cuida dos estados 4-7.
    passo = 4 
    indices_filhos = range(i * passo, (i + 1) * passo)
    
    # Soma ponderada pela utilidade marginal e probabilidade condicional
    for idx_f in indices_filhos:
        u_prime_t2 = utilidade_marginal(dividendos_t2[idx_f], gamma)
        fator_desconto_estoc = beta * (u_prime_t2 / u_prime_t1)
        # Nota: Ajustamos a probabilidade para o ramo local (0.25 para cada um dos 4 filhos)
        prob_local = 0.25 
        soma_expectativa += prob_local * fator_desconto_estoc * (preco_t2[idx_f] + dividendos_t2[idx_f])
    
    preco_t1[i] = soma_expectativa

# Cálculo do Preço no Período 0 (Raiz)
u_prime_t0 = utilidade_marginal(dividendo_t0, gamma)
soma_expectativa_t0 = 0.0
for i in range(2):
    u_prime_t1 = utilidade_marginal(dividendos_t1[i], gamma)
    fator_desconto_estoc = beta * (u_prime_t1 / u_prime_t0)
    soma_expectativa_t0 += prob_t1_cond[i] * fator_desconto_estoc * (preco_t1[i] + dividendos_t1[i])

preco_t0 = soma_expectativa_t0

# 3. Exibição dos Resultados
print(f"--- Preços de Equilíbrio (Modelo de Lucas) ---")
print(f"Preço em t=0: {preco_t0:.4f}")
print(f"Preços em t=1: Nó A_11 = {preco_t1[0]:.4f}, Nó A_12 = {preco_t1[1]:.4f}")
