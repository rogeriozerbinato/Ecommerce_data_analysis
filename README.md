# ecommerce_data_analysis
Este projeto consiste em uma análise de dados de um e-commerce, com foco em faturamento, comportamento de clientes, desempenho de produtos e participação de fornecedores ao longo do tempo

# Conjunto de Dados
Para a construção da análise, foram utilizadas consultas SQL com criação de views analíticas e Power BI para visualização interativa dos dados, permitindo análises dinâmicas através de segmentações por período, cliente, produto e fornecedor.

Os dados utilizados estão organizados em quatro tabelas principais:

pedidos: informações transacionais de vendas

produtos: catálogo de produtos comercializados

fornecedores: dados dos fornecedores dos produtos

clientes_recorrentes: informações consolidadas de clientes frequentes

Essas tabelas foram modeladas em um modelo snowflake, onde a tabela pedidos atua como tabela fato, conectando-se às dimensões de clientes, produtos e a 
tabela fornecedores sendo independente da tabela pedido, sendo relacionada a partir da tabela produtos.

<img width="940" height="422" alt="Relacionamento_Table" src="https://github.com/user-attachments/assets/94fb9459-0ed8-4faa-b0fe-be1c70d01ec5" />

Apresentação

A análise é apresentada em duas frentes principais:

Dashboard Interativo

O dashboard reúne os principais KPIs de negócio, permitindo:

Análise temporal do faturamento

Comparação de desempenho entre fornecedores

Avaliação de produtos mais relevantes

Identificação de clientes com maior impacto na receita

Todas as visualizações são interligadas por filtros, possibilitando análises cruzadas em tempo real.

<img width="1028" height="575" alt="Dashboard" src="https://github.com/user-attachments/assets/84d9c336-9f6b-40f6-9f0b-d74f5bd3b836" />

Apresentação Analítica

A apresentação consolida os principais insights encontrados durante a análise, destacando padrões de consumo, concentração de receita e oportunidades de otimização comercial.

Ferramentas Utilizadas

SQL (MySQL)
Criação de views analíticas para responder às perguntas de negócio.

Python
Utilizado para ingestão dos arquivos .csv no banco de dados e validações exploratórias.

Microsoft Power BI
Construção do dashboard interativo, com uso de medidas DAX e filtros globais.

Perguntas de Negócio

As perguntas abaixo foram desenhadas de forma interligada, permitindo que segmentações comuns (mês, cliente, fornecedor e produto) afetem todos os gráficos e cartões do dashboard.

1. Qual é o faturamento total ao longo do tempo?

Analisa a evolução mensal do faturamento do e-commerce, permitindo identificar tendências de crescimento ou retração.

2. Qual é o faturamento por fornecedor ao longo dos meses?

Permite comparar o desempenho financeiro de cada fornecedor e sua evolução temporal.

3. Qual é o faturamento por produto ao longo do tempo?

Identifica quais produtos são mais relevantes em termos de receita e como seu desempenho varia mensalmente.

4. Qual é o faturamento gerado por cliente?

Avalia a concentração de receita entre clientes recorrentes e identifica clientes estratégicos para o negócio.

5. Qual é o ticket médio por cliente ao longo do tempo?

Permite analisar o comportamento de compra dos clientes, identificando padrões de consumo e variações sazonais.

6. Qual é a participação percentual de cada fornecedor no faturamento total mensal?

Mostra quanto cada fornecedor representa do faturamento total em cada mês, possibilitando análises de concentração e dependência comercial.

Estrutura Analítica

As perguntas de negócio foram respondidas através da criação de views SQL, garantindo:

Reutilização das regras de negócio

Facilidade de manutenção

Integração direta com ferramentas de BI

Performance e clareza na camada analítica

Essas views funcionam como camada semântica, sendo consumidas diretamente pelo Power BI.

Conclusão

Este projeto demonstra uma abordagem completa de análise de dados orientada a negócio, utilizando boas práticas de modelagem, SQL analítico e visualização interativa. A estrutura permite fácil expansão para novos indicadores e análises futuras.

