# OxeBots: Workspace para o Desafio de Computação

Este é o repositório do workspace para o desafio de computação da OxeBots. Ele contém o repositório do robô e o ambiente do desafio. Faça um fork deste repositório e desenvolva sua solução no seu fork pessoal. Após finalizar, abra um pull request para o repositório original com o pacote da sua solução, utilize seu(s) nome(s) ou o nome da equipe no pacote para identificação.

## Índice

- [OxeBots: Workspace para o Desafio de Computação](#oxebots-workspace-para-o-desafio-de-computação)
  - [Índice](#índice)
  - [Pré-requisitos](#pré-requisitos)
  - [Compilando o Workspace](#compilando-o-workspace)
  - [Estrutura do Workspace](#estrutura-do-workspace)

## Pré-requisitos

Para rodar o ambiente de simulação, você precisa:

- Sistema operacional Ubuntu (recomendado: Ubuntu 22.04)
- ROS2 instalado (recomendado: ROS2 Humble)
- Git instalado para clonar o repositório
- Gazebo versão 11 instalado

Certifique-se de que todos esses pré-requisitos estão atendidos antes de prosseguir.

## Compilando o Workspace

1. **Clone o repositório e seus submódulos:**

    ```bash
    git clone git@github.com:OxeBots/desafio_ws.git --recurse-submodule
    ```

2. **Configure o workspace com o script auxiliar:**

    Este script instala as dependências do workspace e atualiza os submódulos.

    ```bash
    bash setup.sh
    ```

3. **Compile o workspace usando o script de compilação:**

    Este script configura e compila todos os pacotes ROS no workspace, incluindo os seus pacotes.

    ```bash
    . build.sh
    ```

Agora você deve ser capaz de rodar os nós e arquivos de inicialização do desafio.

Para mais informações sobre o desafio e como rodá-lo, visite o [README do desafio](https://github.com/OxeBots/desafio_oxebots/blob/main/README.md).

## Estrutura do Workspace

```bash
desafio_ws
├── build
│   └── Arquivos de compilação dos pacotes
├── install
│   └── Arquivos instalados dos pacotes
├── log
│   └── Logs de execução, compilação e erros
└── src
    ├── desafio_oxebots # Pacote ROS do desafio
    └── sua_solucao     # Seu pacote ROS com a solução do desafio, adicione-o aqui
```
