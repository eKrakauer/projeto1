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

make build

## Como executar
Com o programa compilado, permaneça na pasta raiz do repositório e entre com o comando 

make

Nele rodamos 3 conversões de vídeo para 3 formatos e resoluções diferentes para extrair o máximo de informação da qualidade da máquina.

## Como medir o desempenho
A medida de desempenho é feita através da ferramenta perf do Linux, nela temos os dados de miss na L1, Branch miss, frequência da CPU, tempo que o computador levou para executar o programa, tudo isso com os respectivos desvios padrões.

Tudo isso já está como resultado do comando acima
## Como apresentar o desempenho
Para apresentar o desempenho desenvolvemos uma fórmula levando em conta os dados acima que foram capturados como pode ser visto a seguir:

7000*(1/porcentagemL1miss + 1/freqCPU+1/(10*porcentagemBranchmiss))/(tempo/100) + 10000(tempo/100)^(-1,5)

A margem de erro calculada gira em torno de 1% dado resultados na máquina base
## Medições base (uma máquina)
Intel core i7-4500U CPU @ 1.8GHz, 4 Cores, 32K L1, 256K L2, 4096K L3, 8GB DDR3, 1TB 5200RPM
   871.146.825.808      cycles:u                  #    2,519 GHz                      ( +-  0,32% )  (38,66%)
    33.762.809.475      bus-cycles:u              #   97,621 M/sec                    ( +-  0,99% )  (38,79%)
                 0      major-faults:u            #    0,000 K/sec                  
            75.109      minor-faults:u            #    0,217 K/sec                    ( +-  0,02% )
   129.798.997.672      branches:u                #  375,299 M/sec                    ( +-  0,03% )  (38,36%)
     1.207.016.779      branch-misses:u           #    0,93% of all branches          ( +-  0,09% )  (38,30%)
     345854,649724      cpu-clock:u (msec)        #    2,437 CPUs utilized            ( +-  0,98% )
     7.398.406.607      cache-references:u        #   21,392 M/sec                    ( +-  0,31% )  (38,46%)
     4.051.179.689      cache-misses:u            #   54,757 % of all cache refs      ( +-  0,72% )  (38,51%)
   435.226.350.413      L1-dcache-loads:u         # 1258,408 M/sec                    ( +-  0,09% )  (29,82%)
    35.667.197.930      L1-dcache-load-misses:u   #    8,20% of all L1-dcache hits    ( +-  0,20% )  (22,83%)
     5.864.393.631      LLC-loads:u               #   16,956 M/sec                    ( +-  0,34% )  (23,17%)
     3.425.014.300      LLC-load-misses:u         #   58,40% of all LL-cache hits     ( +-  0,81% )  (29,57%)

     141,903719399 seconds time elapsed                                          ( +-  0,86% )
