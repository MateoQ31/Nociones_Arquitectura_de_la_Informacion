--Sentencia de consultas SQLite

--Seleccionar/mostrar los datos de la tabla
 
select *from Nacionalidad
select *from Origen
select *from Casos_Confirmados
select *from Covid19_General_MX
select *from Covid_MX
select *from Entidad
select *from Resultado
select *from Sector
select *from Sexo
select *from Si_No
select *from Tipo_Paciente

--Mujeres mayores de 50 años que son hipertensas y con diabetes

select * 
from Covid19_General_MX
WHERE Clave_Sexo = 1
AND Edad > 50
AND Hipertension = 1
and Diabetes = 1

--Total de personas que necesitaron cuidados intensivos por sexo

select count (*) as Total_Mujeres_UCI
from Covid19_General_MX
WHERE UCI = 1
AND Clave_Sexo = 1 --1:Mujeres

select count (*) as Total_Hombres_UCI
from Covid19_General_MX
WHERE UCI = 1
AND Clave_Sexo = 2 --2:Hombres

--Total de hombres mayores de 60 años hospitalizados que fueron intubados 

select count (*) 
from Covid19_General_MX
WHERE Clave_Sexo = 2
AND Clave_Tipo_Paciente = 2
AND Intubado = 1
AND Edad > 60

--Total de personas extranjeras 

select count (*) as Personas_Extranjeras
from Covid19_General_MX
WHERE Clave_Nacionalidad = 2

--Promedio de la edad

select avg (Edad) as Promedio_Edad from Casos_Confirmados
select avg (Edad) as Promedio_Edad from Covid19_General_MX 

--Total de fallecidos en México por Covid-19

select sum(Fallecido) as Total_Fallecidos_MX
from Covid_MX;

--Total de casos confirmados 

select sum(Casos_Confirmados) as Total_Casos_Confirmados
from Covid_MX;

--Total de datos que contiene la tabla casos confirmados

select count (*) from Casos_Confirmados

--Número máximo y mínimo de casos confirmados en México
 
select max(Casos_Confirmados) as Número_Máximo
from Covid_MX;

select min(Casos_Confirmados) as Número_Mínimo
from Covid_MX;

--Calculo de la razón de letalidad de la Covid-19

select round( sum (CAST(Fallecido as REAL))/sum (Casos_Confirmados),3) as Razón_Letalidad from Covid_MX


--Ordenar los datos de forma ascendente 

SELECT
	Sexo,
	Edad, 
	Fecha
FROM
	Casos_Confirmados
ORDER BY
	Edad ASC;

--Consulta de datos basado ​​en la coincidencia de patrones (entidad que tenga una C en la abreviatura)

SELECT
	Clave_Entidad,
	Entidad_Federativa,
	Abreviatura
FROM
	Entidad
WHERE
	Abreviatura LIKE '%C%'

