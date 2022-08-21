# Modelo IS/LM

O modelo IS/LM é devido originalmente a [Hicks (1937)](https://doi.org/10.2307/1907242) e foi posteriormente popularizado por [Hansen (1953)](https://archive.org/details/AGUIDETOKEYNESBYALVINH.HANSEN/mode/2up), sendo, por isso, também conhecido como modelo Hicks-Hansen.  Nossa apresentação aqui tem apenas interesse didático com o fim de enquadrar o surgimento da teoria de macrofinanças no contexto da teoria macroeconômica, da teoria monetária e da teoria de finanças.  Por isso, apresenta-se uma versão simplificada do modelo IS/LM linear, sem qualquer discussão sobre sua evolução histórica [^1] ou sobre versões independentes da forma funcional linear das funções utilizadas.[^2]


## Mercado de bens

### Demanda efetiva

$$Y^d = C + I + G$$

Onde:

- $Y^d$ é a demanda efetiva
- C é o consumo agregado
- I é o investimento agregado
- G é a despesa pública
-
### Função consumo

A função consumo consiste na teoria de consumo Keynesiana que supõe que o consumo agregado é função crescente da renda, mas com derivada inferior a 1.  Tal derivada é cognominada de **propensão marginal a consumir**.  A função consumo é mostrada a seguir na sua formulação linear:

$$C = C_0 + b.Y$$

Onde:
- $C_0$ é chamado de consumo autônomo, sendo, por definição, independente da renda
- b é a propensão marginal a consumir
- Y é a renda agregada.

### Função investimento

Os empresários agem motivados por seus "espíritos animais" de medo e ganância.  Estes "espíritos animais" os conduzem a formar expectativas sobre o fluxo de caixa esperado dos projetos de investimento que determina a *eficiência marginal do capital* (que é um neologismo para a taxa interna de retorno).  Os empresários, então, realizam apenas os projetos cuja eficiência marginal superem a taxa de juros real da economia.  No curto prazo, porém, as expectativas são supostas fixadas e, portanto, também a eficiência marginal do capital de modo que pode-se supor que o investimento dependa apenas da taxa de juros.

Chama-se função investimento à relação entre o investimento agregado e a taxa de juros real da economia.  Supõe-se que esta função possui derivada menor que zero, indicando que um aumento na taxa de juros real da economia implica redução no investimento agregado.  Há também um investimento autônomo, isto é, que não depende da taxa de juros, que pode estar relacionado, por exemplo, à preservação do capital contra depreciação.  A função investimento é mostrada a seguir na sua formulação linear:

$$I = I_0 + d.R$$

Onde:
- $I_0$ é chamado de consumo autônomo, sendo, por definição, independente da renda
- d < 0  é a sensibilidade do investimento à taxa de juros
- R é a taxa de  juros real da economia.

### Despesa pública

A despesa pública é suposta ser definida politicamente em um valor $G_0$ e ser variável exógena ao sistema econômico.

$$G = G_0$$

### Equilíbrio do mercado de bens

O equilíbrio é definido por:

$$Y^d = Y$$

Onde:
Y é a renda agregada.

Ou seja:

$$Y = \left(C_0 + b. Y\right) + \left(I_0 + d. R\right) + G_0$$ 

Isto é:

$$\left(1 - b\right).Y - d.R - C_0 - I_0 - G_0 = 0 $$

Esta curva é chamada de IS, porque o equilíbrio no mercado de bens se dá com Investimento (I) se igualando à poupança (S).  Ou seja:

$$IS\left(R, Y\right) =  \left(1 - b\right).Y - d.R - C_0 - I_0 - G_0 = 0 $$



## Mercado monetário

### Oferta de moeda
A oferta de moeda da economia é determinada pelo Banco Central assumindo qualquer valor definido pela autoridade monetária.  Formalmente:

$$M^S = M_0$$

Onde $M^S$ é a oferta de moeda e M é quantidade de moeda definida pela autoridade monetária.

### Demanda de moeda

A demanda real de moeda, conhecida em Keynes como **preferência pela liquidez** depende da taxa de juros da economia e do nível de produção.  A taxa de juros determina a demanda de moeda, pois um dos motivos para se demandar moeda é para aproveitar a possibilidade de a taxa de juros das aplicações financeiras se elevarem.  Keynes chama esta razão para a demanda de moeda de **motivo especulação**.  Ocorre que quanto maior a taxa de juros menor a probabilidade de elas se elevarem e, por isso, a demanda por especulação é descrescente com a taxa de juros.

Há também o **motivo transação** e o **motivo precaução** e ambos explicam a dependência da demanda de moeda ao nível de produção da economia.  Isto porque o **motivo transação** decorre de as pessoas precisarem de moeda para efetuarem a compra dos bens que demandam ao passo que o **motivo precaução** resulta de as pessoas terem de se preparar para a realização de gastos imprevistos e, por isso, necessitarem de moeda para se lhe darem com tais imprevistos.  Ou seja, a demanda de moeda pelos motivos transação e precaução é crescente com a renda.  A função de preferência pela liquidez linear seria, então, uma função como a seguinte:

$$L = e.Y + f.R$$

Onde e > 0, f < 0 são parâmetros comportamentais da demanda, Y é a renda e R a taxa de juros real da economia.

### Equilíbrio no mercado monetário

O equilíbrio se dá quando a oferta de moeda se iguala à demanda de moeda.  Como a preferência pela liquidez L é uma demanda real de moeda, então, para se chegar à demanda se multiplicar L pelo nível de preços $P_0$, ou seja:

$$M^S = L.P_0$$

Ou, em termos de quantidade real de moeda, temos:

$$\frac{M^S}{P_0} = L$$


Então, substituindo as variáveis pelas suas respectivas expressões, temos:

$$\frac{M_0}{P_0} = e.Y + f.R$$

Esta curva é chamada de LM porque iguala a preferência pela liquidez (L) à oferta de moeda (M).  Então:

$$LM\left(R, Y\right) =  e.Y + f.R - \frac{M_0}{P_0} = 0 $$


## Equilíbrio de curto prazo

O equilíbrio de curto prazo se dá quando a renda Y e a taxa de juros R se mostram compatíveis com a LM e com a IS. Ou seja, resolvendo o sistema a seguir:

$$IS\left(R, Y\right) =  \left(1 - b\right).Y - d.R - C_0 - I_0 - G_0 = 0 $$
$$LM\left(R, Y\right) =  e.Y + f.R - \frac{M_0}{P_0} = 0 $$

### Efeito das políticas fiscal e monetária
Para determinar tais efeitos, basta calcular as derivadas parciais $\frac{\partial Y}{\partial G_0}$ e $\frac{\partial Y}{\partial M_0}$ na solução do sistema.  Formalmente, isto é feito, sem resolver explicitamente o sistema, por meio do teorema da função implícita.  Mas, no caso linear, pode-se resolver o sistema e, depois, calcular o valor das derivadas parciais mencionadas na solução explícita do sistema.

## Exercício

1. Resolva o sistema IS-LM linear
2. Calcule as derivadas parciais da solução do sistema do item anterior em relação à despesa pública e à quantidade de moeda para determinar os efeitos da política monetária e fiscal.
3. Refaça os exercícios 1 e 2 com funções consumo, investimento e demanda de moeda genérica e, usando o teorema  da função implícita, calcule o sinal das derivadas da solução em relação à moeda e à despesa pública.

[^1]: Para os interessados na evolução histórica do modelo, refere-se à pagina Web do [Hystory of Economic Thought](https://www.hetwebsite.net/het/essays/keynes/hickshansen.htm).
[^2]: Sem a suposição de linearidade das funções consumo, investimento e demanda de moeda, é preciso utilizar o teorema da função implícita para calcular o efeito das políticas fiscal e monetária sobre o nível de produto.
