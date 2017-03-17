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

## Como compilar/instalar
Para instalação do programa, com o terminal na pasta raiz do repositório acima, basta você usar o seguinte comando
```
make build
```
## Como executar
Com o programa compilado, permaneça na pasta raiz do repositório e entre com o comando
```
make
```
Nele rodamos 3 conversões de vídeo para 3 formatos e resoluções diferentes para extrair o máximo de informação da qualidade da máquina.

## Como medir o desempenho
A medida de desempenho é feita através da ferramenta perf do Linux, nela temos os dados de miss na L1, Branch miss, frequência da CPU, tempo que o computador levou para executar o programa, tudo isso com os respectivos desvios padrões.

Tudo isso já está como resultado do comando acima.

## Como apresentar o desempenho
Para apresentar o desempenho final da máquina, basta extrair os dados obtidos acima e aplicar na fórmula que desenvolvemos como pode ser visto a seguir:

Score = 7000*(1/porcentagemL1miss + 1/freqCPU + 1/(10*porcentagemBranchmiss))/(tempo/100) + 10000(tempo/100)^(-1,5)

A margem de erro calculada gira em torno de 1% dado resultados na máquina base

## Medições base (uma máquina)
Intel core i7-4500U CPU @ 1.8GHz, 4 Cores, 32K L1, 256K L2, 4096K L3, 8GB DDR3, 1TB 5200RPM

Frequência de processamento: 2,519 GHz (+- 0,32%)
Branches misses: 0,93% (+- 0,009%)
L1 cache misses: 8,20% (+- 0,20%)
tempo de excução: 141,903719399s (+- 0,86%)
Pontuação: 9000 +/- 100
