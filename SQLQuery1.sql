
-- Quantos clientes deixaram o banco? -- 2.037 clientes ou 20,37%
SELECT 
	COUNT(*) AS 'total_churn',
	COUNT(*) AS 'percentual_churn'
FROM dbo.churnmodeling
WHERE Exited = 1; 


-- Qual a m�dia de idade dos clientes que deixaram o banco? -- 44 Anos
SELECT
	AVG(Age) AS 'middleAge_churn'
FROM dbo.churnmodeling
WHERE Exited = 1;

-- Qual a m�dia de idade dos clientes que N�O deixaram o banco? -- 37 Anos
SELECT
	AVG(Age) AS 'middleAge_notchurn'
FROM dbo.churnmodeling
WHERE Exited = 0;

-- Qual o pa�s onde os clientes mais abandonam o banco?
SELECT
	Geography,
	COUNT(Exited) AS 'country_churn'
FROM churnmodeling
GROUP BY Geography
ORDER BY COUNT(Exited) DESC;

/* O Churn pode ter alguma rela��o com a quantidade de servi�os oferecidos?
Obs: requer uma an�lise de neg�cio mais aprofundada, mas a priori podemos afirmar que sim, clientes que possuem mais produtos
tem menores chances de abandonar o banco.
N�mero de produtos - qtd_churn
4 - 60
3 - 220
2 - 348
1 - 1409

*/
SELECT 
	NumOfProducts,
	COUNT(Exited) AS 'qtd_churn'
FROM churnmodeling
WHERE Exited = 1
GROUP BY NumOfProducts
ORDER BY COUNT(Exited);