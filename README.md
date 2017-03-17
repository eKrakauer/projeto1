# Grupo 17

Eric Krakauer    1552553
Gabriel Souza Franco 155477
Rafael Gois Pimenta 157055

## O que faz? Para que serve?
Escolhemos utilizar o FFmpeg para realizar o benchmarking. Ele é um programa de conversão de vídeos em diversos formatos.
## Por que é bom para medir desempenho?
Por se tratar de um conversor de vídeos, ele exercita vários componentes do computador, como CPU Multi-core, GPU e acesso a disco.

## O que baixar
O FFmpeg com as atualizações mais recentes pode ser baixado no site https://ffmpeg.org/download.html 

Para realização do nosso benchmarking você deverá obter o FFmpeg para compilar e o arquivo teste através do comando git clone no repositório https://github.com/eKrakauer/projeto1

Onde pode ser baixado o código fonte dele. Não é permitido utilizar nenhum versão já instalada nos computadores.
## Como compilar/instalar
Para instalação do programa, com o terminal na pasta raiz do repositório acima, basta você usar o comando make build

O programa deverá ser instalado no computador, compilado localmente. Não deixar o binário disponível. Não deve ser necessário instalar como administrador do computador (root)
## Como executar
Com o programa compilado, permaneça na pasta raiz do repositório e entre com o comando make


Instruções para execução. Se seu programa precisa de entradas, você deve fornece-las para que todos executem corretamente.
## Como medir o desempenho
A medida de desempenho é feita através da ferramenta perf do Linux, nela temos os dados de miss na L1, Branch miss, frequência da CPU, tempo que o computador levou para executar o programa.


Como que o desempenho é medido através deste programa? Se for através de tempo, você deve especificar claramente qual tempo deverá ser utilizado e indicar o motivo aqui. Quantas vezes a medida deverá ser feita? O que fazer com ela (média, etc) ? Não especificar o tempo será considerado falha grave.
## Como apresentar o desempenho
Como o desempenho deverá ser mostrado. Margem de erro, etc. 
## Medições base (uma máquina)
Intel core i7-4500U CPU @ 1.8GHz, 4 Cores, 32K L1, 256K L2, 4096K L3, 8GB DDR3, 1TB 5200RPM

Inclua a especificação dos componentes relevantes e os resultados de desempenho.
