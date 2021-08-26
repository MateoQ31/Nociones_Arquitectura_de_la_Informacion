--Sentencias de consultas

--Mostrar los documentos de la colección
db.Entidad.find().pretty()
db.Covid_MX.find().pretty()
db.Sexo.find().pretty()
db.Origen.find().pretty()
db.Nacionalidad.find().pretty()
db.Si_No.find().pretty()
db.Covid19_General_MX.find().pretty()
db.Casos_Confirmados.find().pretty()
db.Tipo_Paciente.find().pretty()
db.Sector.find().pretty()
db.Resultado.find().pretty()

--Conteo de los documentos totales que hay en la colección
db.Covid19_General_MX.find().count()
db.Covid_MX.find().count()
db.Entidad.find().count()
db.Casos_Confirmados.find().count()
db.Nacionalidad.find().count()
db.Origen.find().count()
db.Sexo.find().count()
db.Tipo_Paciente.find().count()
db.Sector.find().count()
db.Si_No.find().count()
db.Resultado.find().count()

--Contar el total de hombre en los casos confirmados

db.Casos_Confirmados.count(
    { Sexo: "Masculino"}
)


--Mostrar los mayores de 50 años
db.Covid19_General_MX.find(
    { Edad: { $gt: 50 } }
)

--Contar el total de los Mayores de 35 años

db.Covid19_General_MX.count( { Edad: { $gt: 35 } } )
db.Casos_Confirmados.count( { Edad: { $gt: 35 } } )

--Promedio de edad
db.Covid19_General_MX.aggregate([
            {
                '$group': {'_id': '$name', 'Promedio_Edad': {'$avg': '$Edad'}}
            }
        ])


db.Casos_Confirmados.aggregate([
            {
                '$group': {'_id': '$name', 'Promedio_Edad': {'$avg': '$Edad'}}
            }
        ])


-- Edad máxima y Edad mínima

db.Casos_Confirmados.aggregate([    
    {
       $group:
         {
           _id: "$item",
           Edad_Mínima: { $min: "$Edad" }
         }
     }
])

db.Casos_Confirmados.aggregate([    
    {
       $group:
         {
           _id: " ",
           Edad_Máxima: { $max: "$Edad" }
         }
     }
])

--Total de fallecidos en México por covid-19 

db.Covid_MX.aggregate([    
    {
       $group:
         {
           _id: " ",
           Total_Fallecidos: { $sum: "$Fallecido" }
         }
     }
])

--Total de casos confirmados en México

db.Covid_MX.aggregate([    
    {
       $group:
         {
           _id: " ",
           Total_Casos: { $sum: "$Casos_Confirmados" }
         }
     }
])
