# Dashboard de Recursos Humanos - Zettatech
### Projeto Prático de Análise e Engenharia de Dados (End-to-End)

[![Power BI](https://img.shields.io/badge/PowerBI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)](https://powerbi.microsoft.com/)
[![DAX](https://img.shields.io/badge/DAX-0078D4?style=for-the-badge&logo=microsoft&logoColor=white)](https://learn.microsoft.com/dax/)
[![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![Pandas](https://img.shields.io/badge/Pandas-150458?style=for-the-badge&logo=pandas&logoColor=white)](https://pandas.pydata.org/)
[![Power Query](https://img.shields.io/badge/Power_Query-0078D4?style=for-the-badge&logo=microsoft&logoColor=white)](https://powerbi.microsoft.com/)

---

🔗 [**Clique aqui para acessar o Dashboard Interativo**](https://app.powerbi.com/view?r=eyJrIjoiZjkxYTI4MDctMjE1MC00YzA0LThiOTctYmFkMjM2YWI0YTQ3IiwidCI6IjQwNTBmNTliLTViYTItNGEwOS04NDU4LWI2MjUwOWM0Yzk3ZCJ9)

---

## Sobre o Projeto

Este projeto consiste em uma solução analítica *End-to-End* de **People Analytics** desenvolvida para a **Zettatech - Soluções de Dados Avançadas**, focada em apoiar a gestão executiva de Recursos Humanos com visão estratégica sobre a força de trabalho. 

A aplicação permite monitorar métricas vitais da organização, como a distribuição de colaboradores ativos por departamento, folha salarial total, taxa de turnover, perfil demográfico (gênero e faixas etárias) e o histórico de contratações ao longo dos anos.

---

## Preview do Dashboard

![Preview do Dashboard de RH](docs/Dashboard_RH.png)

### Principais Funcionalidades & Filtros Interativos:
* **Filtros Globais:** Seleção dinâmica por **Período**, **Departamento** e **Localidade (Filial/Região)**.
* **Leitura Executiva em Dark Theme:** Layout moderno de alto contraste projetado para minimizar o cansaço visual e destacar informações essenciais.

---

## Principais Indicadores (KPIs)

| Indicador | Valor / Métrica | Descrição |
| :--- | :--- | :--- |
| **Funcionários Ativos** | **849** | Colaboradores com vínculo ativo na empresa |
| **Custo Mensal Total** | **R$ 13,49 Mi** | Investimento salarial bruto mensal consolidado |
| **Taxa de Turnover** | **15,10%** | Percentual de colaboradores inativos/desligados na base |
| **Proporção por Gênero** | **57,01% Masc / 42,99% Fem** | Distribuição demográfica de gênero |

---

## Visões Analíticas da Aplicação

1. **Volume por Departamento:** Destaque para as áreas de tecnologia e dados com maior *headcount* — **Engenharia de Dados (119)**, **Análise de Dados (111)** e **Ciência de Dados (103)**.
2. **Custo Orçamentário por Departamento:** Mapeamento financeiro liderado por **Engenharia de Dados (R$ 2.124,97 Mil)** e **Ciência de Dados (R$ 2.008,15 Mil)**.
3. **Distribuição por Idade & Gênero:** Gráfico empilhado comparando a força de trabalho masculina e feminina distribuída nas faixas de 18-24, 25-34, 35-44, 45-54 e 55+ anos.
4. **Contratações por Ano:** Análise histórica de expansão da empresa, acompanhando picos e vales de recrutamento entre 2010 e 2023.

---

## Arquitetura e Modelagem de Dados

O modelo dimensional foi desenhado no padrão **Star Schema (Esquema em Estrela)**:

* **Tabela Fato (`funcionarios`):** Contém os 1.000 registros detalhados dos colaboradores (Salário, Cargo, Departamento, Data de Contratação, Status, Idade, Gênero).
* **Tabela Dimensão (`filiais`):** Tabela de apoio cadastral com as 10 filiais (Cidade, Estado, Região, Porte).

![alt text](docs/Modelo_de_dados.png)

---

## Estrutura de Medidas DAX

Para manter a governança do modelo de dados no Power BI, todas as fórmulas DAX foram categorizadas em pastas de trabalho:

### Pasta `KPIs`
```dax
// Quantidade Total de Funcionários Cadastrados
Qtd Funcionários = COUNTROWS(funcionarios)
```
```dax
// Funcionários Ativos na Organização
Funcionários Ativos = 
CALCULATE(
    [Qtd Funcionários], 
    funcionarios[Status do Funcionário] = "Ativo"
)
```
```dax
// Taxa de Turnover (%)
Taxa de Turnover (%) = 
DIVIDE(
    CALCULATE([Qtd Funcionários], funcionarios[Status do Funcionário] = "Inativo"), 
    [Qtd Funcionários], 
    0
)
```
```dax
// Custo Mensal Total
Custo Mensal Total = SUM(funcionarios[Salário])
```

### Pasta `Visuais`
```dax
// Percentual da força de trabalho por Gênero
% por Gênero = 
DIVIDE(
    [Qtd Funcionários], 
    CALCULATE([Qtd Funcionários], ALL(funcionarios[Gênero])), 
    0
)
```
```dax
// Folha Salarial Totalizada por Departamento
Custo por Departamento = SUM(funcionarios[Salário])
```
```dax
// Evolução Acumulada de Contratações
Funcionários Contratados Acumulados = 
CALCULATE(
    [Qtd Funcionários],
    FILTER(
        ALLSELECTED('funcionarios'[Data de Contratação]),
        'funcionarios'[Data de Contratação] <= MAX('funcionarios'[Data de Contratação])
    )
)
```

---

## Design & UI/UX (Dark Mode)

A interface foi concebida com foco em **Dashboard Design Executivo**:
* **Fundo:** Tom azul marinho escuro `#0D1117` / `#161B22` para reduzir fadiga visual.
* **Cartões Flutuantes:** Elementos arredondados `#1E293B` trazendo efeito de profundidade.
* **Cores de Destaque:** 
  * Azul `#0066CC` para dados gerais e representação masculina.
  * Laranja/Terracota `#E07A5F` para o público feminino.
  * Branco `#FFFFFF` em tipografia de alto contraste para números-chave.

---

## Autor

Desenvolvido por **Isaias Santos**

* **LinkedIn:** [linkedin.com/in/isaiassousadossantos](https://www.linkedin.com/in/isaiassousadossantos/)
* **Portfólio:** [isaiassantos.works](https://isaiassantos.works/)
