# Introdução à linguagem Julia

## Variáveis e tipos de dados

A referência usada aqui é [Julia Manual: variables](https://docs.julialang.org/en/v1/manual/variables/)

**Definição**

É um nome usado para se referir a um valor armazenado na memória.

**Propriedades**

1. Nomes de variáveis são sensíveis a maiúsculas e minúsculas, ou seja, *A* é uma variável diferente de *a*.

2. Pode-se usar a notação Latex para nomear variáveis.

3. Variáveis devem começar com uma letra e, depois, usar qualquer caracter Unicode.

4. Pode-se atribuir a uma variável um nome composto apenas sublinhados (___), mas estas variáveis não podem ser usadas para  representar valores atribuídos a outras variáveis.  Isto é, pode-se escrever o seguinte:

___ = 3

Mas não se pode escrever o que segue:

y = ___

5. Convenções estilísticas para nomes de variáveis

- use letras minúsculas
- separe palavras por sublinhado, mas, na medida do possível dado pela legibilidade, evite o uso do sublinhado
- Mais detalhes podem ser vistos em [Style Guides](https://docs.julialang.org/en/v1/manual/style-guide/#Style-Guide)

## Tipos de dados numéricos

### Inteiros

- **IntX** onde X = 8,16,32, 64 ou 128.  Aceita valores de de -2^(X-1) até 2^(X)-1
- **UintX** onde X = 8,16,32, 64 ou 128 - o mesmo que **IntX**, mas não aceita sinal negativo.  Seus valores vão de 0 a 2^(X)-1
- Bool armazena os valores false (0) ou true (1)

### Reais (ou números de ponto flutuante)

- **Float16**
- **Float32**
- **Float64**

### Complexos

Um número complexo é da forma a + b.i onde a, b pertencem aos inteiros ou aos reais.  Em Julia se denota por a + bim. O tipo usado denomina-se **ComplexX** onde X segue a mesma convenção dos reais ou dos inteiros a depender dos valores de a e b.

**Exemplo**: número complexo em  Julia

2 + 1im


### Racionais

Um número racional é um número real que pode ser colocado na forma de fração.  A notação para racionais em Julia é dada pelo operador de divisão duplo //

**Exemplo**: número racional em Julia

2//3

**Observação**
Embora Julia não admita divisão por zero, ela admite denotar a noção de infinito com um número racional como segue: 1//0.



## Programação Procedural

**Função**: notação

```
function f(x,y)
	x + y
end
```

Ou, para funçôes cuja expressão definidora é única, pode-se escrever:

f(x,y) = x + y 


## Programação Estruturada


### Iteração

```
while i <= 5
    println(i)
    global i += 1
end
```

```
for i = 1:5
    println(i)
end
```

### Seleção

```
if x < y
    println("x is less than y")
elseif x > y
    println("x is greater than y")
else
    println("x is equal to y")
end
```

