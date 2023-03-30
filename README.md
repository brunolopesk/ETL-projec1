# ETL Project-1

Pipeline de ETL para extrair dados de um arquivo CSV, transformá-los em formato JSON e carregá-los em um banco de dados SQLServer

## Tech

O projeto foi realizado utilizando python, com auxilio das bibliotecas pandas e pyodbc.

As etapas foram:
 - Ler os arquivos da fonte;
 - Definir a conexão com o banco de dados;
 - Definir o caminho do arquivo CSV;
 - Converter o arquivo CSV em um DataFrame do Pandas e depois converte para JSON;
 - Definir nome da tabela no banco de dados SQLServer e as colunas correspondentes conforme o dataset
 - Inserir os dados no banco de dados;
 - Fechar a conexão com o banco de dados;
 

## Dataset 
 O dataset escolhido para realização deste trabalho foi o "Churn Modeling"

 
 O conteúdo deste conjunto de dados contém informações sobre os clientes de um banco e a variável alvo é uma variável binária que reflete se o cliente deixou o banco (fechou sua conta) ou se ele continua sendo um cliente. Em outras palavras, o conjunto de dados fornece informações sobre a rotatividade de clientes do banco.
 
  Fonte: https://www.kaggle.com/datasets/shrutimechlearn/churn-modelling
  
  As colunas criadas no SQLServer, conforme o dataset foram:
  RowNumber,    CustomerId, Surname,    CreditScore,    Geography,  Gender, Age,
  Tenure,   Balance,    NumOfProducts,  HasCrCard,    IsActiveMember,   EstimatedSalary,  Exited
  
 A coluna "Exited" é a principal coluna nesse Dataset, é justamente ela que indica se o cliente fechou ou não sua conta no banco.
 
 ## SQL Server 
 
- Criando a tabela com todas as colunas do dataset;

    CREATE Table churnmodeling(
    
        RowNumber INT, -- Números de linha de 1 a 10000
        CustomerId INT, -- Ids exclusivos para identificação do cliente
        Surname VARCHAR(50), -- Sobrenome do cliente
        CreditScore INT, -- Pontuação de crédito do cliente
        Geography VARCHAR(50), -- O país de onde o cliente pertence
        Gender VARCHAR(10), -- Gênero do cliente
        Age INT, -- idade do cliente
        Tenure INT, -- nº de anos que o cliente está no banco
        Balance FLOAT, -- Saldo bancário do cliente
        NumOfProducts INT, -- nº de produtos bancários que o cliente faz uso
        HasCrCard INT, -- Se o cliente possui cartão ou não
        IsActiveMember INT, -- Se o cliente é um mebro ativo ou não do banco
        EstimatedSalary FLOAT, -- Salário aproximado do cliente
        Exited INT -- Se o cliente deixou ou não o banco;
)

