# Bem vindo!

Aqui é a casa da disciplina de Macrofinanças Computacionais do Curso de Ciências Econômicas da Universidade Federal do Rio Grande do Sul.

Aqui você encontrará conteúdos da disciplina  ministrada por mim [^1].

O plano de ensino da disciplina pode ser visto [aqui](https://docs.google.com/document/d/1FQFYzJR_xu-IlDh-rPIKJ7XmGjQdj5NcEVEFPP9vUQQ/edit?usp=sharing).

Também vou postar aqui videos de algumas das aulas.  Espero que seja útil.

À medida que o material for sendo posto aqui, ele vai aparecendo no Sumário aí embaixo.  Então, vai dando uma olhada para ver se você encontra o que procura.


1. [Introdução à Linguagem MATLAB](../octave/intMATLAB.md)
2. [Revisitando de novo o modelo IS/LM](islm.md)
3. [Curva de Phillips:Saindo dos modelos macroeconômicos estáticos de curto prazo para entender a dinâmica da economia.](phillips.md)
4. [Curva de Phillps com Expectativas Racionais: abandonando a dinâmica determinística rumo à dinâmica aleatória](lucasRapping.md)
5. [Política monetária com Expectativas Racionais](polmonExpectativasRacionais.md)
6. [Novos Keynesianos](novosKeynesianos.md)




Até.



[^1]: Quem sou eu?  Ah!...  Quase me esqueço.  Meu nome é Nelson Seixas.  Atualmente, sou professor de Macrofinanças Computacionais e Ciência de Dados da Faculdade de Ciências Econômicas da Universidade Federal do Rio Grande do Sul, Coordenador do Núcleo de Pesquisa e Extensão em Ciência de Dados e Computacional em Economia e Finanças (e-CompFin) da mesma universidade do curso de bacharelado em ciências econômicas e do Programa de Pós-graduação Profissional em Economia.  Se quiser saber mais sobre mim, dá uma olhada [aqui](https://professor.ufrgs.br/nelsonseixas)



## Introdução

Macrofinanças é o estudo explícito do impacto de variâveis macroeconômicas no mercado financeiro e vice-versa.  Modernamente, ela surge a partir do trabalho seminal de [Lucas (1978)](https://www.jstor.org/stable/1913837)
sobre apreçamento de ativos financeiros.  O foco prioritário foco prioritário (mas não exclusivo) da macrofinanças é estudar o impacto de variações nos preços de ativos de renda variável na macroeconomia, distinguindo-se 
da tradicional economia monetária cuja atenção se direciona essencialmente aos ativos ativos de renda fixa.  Nesse sentido, macrofinanças completa o entendimento da economia monetária ao estudo da inter-relação entre
mercado financeiro e macroeconomia.

Em virtude de seu nascimento recente, macrofinanças trabalha com modelagem de dinâmica estocástica, exigindo, por isso, um instrumental matemática, estatístico e computacional mais avançado do que a média do material
costumeiramente utilizado em economia.  Em termos termos teóricos, trabalha-se com  modelos de equilíbrio geral dinâmico estocásticos sem fricção, chamados de modelos de ciclos reais de negócios cuja sigla em inglês é RBC
e subsidiariamente, para tratar de algumas questões específicas, adicionam-se fricções a estes modelos. conhecidos pela sigla em inglês DSGE.[^2]

[^2]: Uma apresentação simples, em português, pode ser vista em [Dammski e D'Agostini (2024)](https://www.scielo.br/j/rec/a/kTtt4vQ6j83JXsJCGL3CPjq/?lang=pt&format=pdf)

Como os mercados financeiros e de capitais respondem pela dinâmica de crescimento das economia, ligando o presente ao futuro, eles são essenciais para a gestão da política monetária e, por isso, modelos de macrofinanças
são amplamente utilizados pela maior parte das autoridades econômicas e monetárias mundo afora.  Em particular, no Brasil, o Banco Central é o seu utilizador mais famoso, tendo desenvolvido o modelo [SAMBA](https://www.bcb.gov.br/detalhenoticia/701/noticia), descrito em [Castro et al (2011)](https://www.bcb.gov.br/content/publicacoes/WorkingPaperSeries/wps239.pdf) e sua revisão em [Fasolo et al (2023)](https://www.bcb.gov.br/content/publicacoes/WorkingPaperSeries/WP578.pdf).[^3]

[^3]: Veja também [Estudo Especial nº 39/2019](https://www.bcb.gov.br/conteudo/relatorioinflacao/EstudosEspeciais/Revisao_do_modelo_estrutural_de_medio_porte_Samba.pdf) e  [Relatório de Inflação Mar/2023](https://www.bcb.gov.br/content/ri/relatorioinflacao/202303/ri202303b5p.pdf).

Esta disciplina objetiva habilitar seus alunos a utilizarem modelos de macrofinanças desenvolvidos a partir da década de 1980, sendo particularmente importante os trabalhos de [Kydland and Prescott (1982)](https://www.jstor.org/stable/1913386?origin=crossref), [Calvo (1983)](https://www.sciencedirect.com/science/article/pii/0304393283900600), [Mehra and Prescott (1985)](https://www.sciencedirect.com/science/article/pii/0304393285900613?via%3Dihub) e [Christiano and Eichenbaum (1992)](https://www.jstor.org/stable/2117426) e [Christiano and Eichenbaum (1992b)](https://ideas.repec.org/p/nbr/nberwo/3920.html).  Culmina-se com o próprio modelo SAMBA como estudo de caso particularmente importante.  Desta
forma, os alunos ficam capacitados a compreender o debate econômico modernamente realizado em instituições financeiras, governos e, em particular, na gestão da política monetária brasileiras feita pelo Banco Central do Brasil.

