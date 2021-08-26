--Sentencias de creación de documento(s)

mongosh "mongodb+srv://covid-19mx.d0txh.mongodb.net/myFirstDatabase" --username MateoQ

--Base de datos
use COVID-19MX 

--Colección Entidad

db.Entidad.insertMany([
	{Clave_Entidad: 1, Entidad_Federativa: "Aguascalientes", Abreviatura: "AS"},
	{Clave_Entidad: 2, Entidad_Federativa: "Baja California", Abreviatura: "BC"},
	{Clave_Entidad: 3, Entidad_Federativa: "Baja California Sur", Abreviatura: "BS"},
	{Clave_Entidad: 4, Entidad_Federativa: "Campeche", Abreviatura: "CC"},
	{Clave_Entidad: 5, Entidad_Federativa: "Coahuila de Zaragoza", Abreviatura: "CL"},
	{Clave_Entidad: 6, Entidad_Federativa: "Colima", Abreviatura: "CM"},
	{Clave_Entidad: 7, Entidad_Federativa: "Chiapas", Abreviatura: "CS"},
	{Clave_Entidad: 8, Entidad_Federativa: "Chihuahua", Abreviatura: "CH"},
	{Clave_Entidad: 9, Entidad_Federativa: "Ciudad de México", Abreviatura: "DF"},
	{Clave_Entidad: 10, Entidad_Federativa: "Durango", Abreviatura: "DG"},
	{Clave_Entidad: 11, Entidad_Federativa: "Guanajuato", Abreviatura: "GT"},
	{Clave_Entidad: 12, Entidad_Federativa: "Guerrero", Abreviatura: "GR"},
	{Clave_Entidad: 13, Entidad_Federativa: "Hidalgo", Abreviatura: "HG"},
	{Clave_Entidad: 14, Entidad_Federativa: "Jalisco", Abreviatura: "JC"},
	{Clave_Entidad: 15, Entidad_Federativa: "México", Abreviatura: "MC"},
	{Clave_Entidad: 16, Entidad_Federativa: "Michoacán de Ocampo", Abreviatura: "MN"},
	{Clave_Entidad: 17, Entidad_Federativa: "Morelos", Abreviatura: "MS"},
	{Clave_Entidad: 18, Entidad_Federativa: "Nayarit", Abreviatura: "NT"},
	{Clave_Entidad: 19, Entidad_Federativa: "Nuevo León", Abreviatura: "NL"},
	{Clave_Entidad: 20, Entidad_Federativa: "Oaxaca", Abreviatura: "OC"},
	{Clave_Entidad: 21, Entidad_Federativa: "Puebla", Abreviatura: "PL"},
	{Clave_Entidad: 22, Entidad_Federativa: "Querétaro", Abreviatura: "QT"},
	{Clave_Entidad: 23, Entidad_Federativa: "Quintana Roo", Abreviatura: "QR"},
	{Clave_Entidad: 24, Entidad_Federativa: "San Luis Potosí", Abreviatura: "SP"},
	{Clave_Entidad: 25, Entidad_Federativa: "Sinaloa", Abreviatura: "SL"},
	{Clave_Entidad: 26, Entidad_Federativa: "Sonora", Abreviatura: "SR"},
	{Clave_Entidad: 27, Entidad_Federativa: "Tabasco", Abreviatura: "TC"},
	{Clave_Entidad: 28, Entidad_Federativa: "Tamaulipas", Abreviatura: "TL"},
	{Clave_Entidad: 29, Entidad_Federativa: "Tlaxcala", Abreviatura: "AS"},
	{Clave_Entidad: 30, Entidad_Federativa: "Veracruz de Ignacio de la Llave", Abreviatura: "VZ"},
	{Clave_Entidad: 31, Entidad_Federativa: "Yucatán", Abreviatura: "YN"},
	{Clave_Entidad: 32, Entidad_Federativa: "Zacatecas", Abreviatura: "ZS"},
	{Clave_Entidad: 36, Entidad_Federativa: "Estados Unidos Mexicamos", Abreviatura: "EUM"},
	{Clave_Entidad: 97, Entidad_Federativa: "No Aplica", Abreviatura: "NA"},
	{Clave_Entidad: 98, Entidad_Federativa: "Se Ignora", Abreviatura: "SI"},
	{Clave_Entidad: 99, Entidad_Federativa: "No Especificado", Abreviatura: "NE"}
]),

db.Entidad.find()

--Colección Origen

db.Origen.insertMany([
	{Clave_Origen: 1, Descripcion: "Usmer"},
	{Clave_Origen: 2, Descripcion: "Fuera de Usmer"},
	{Clave_Origen: 99, Descripcion: "No Especificado"}
]),

db.Origen.find()

--Colección Resultado

db.Resultado.insertMany([
	{Clave_Resultado: 1, Descripcion: "Positivo Sars-Cov-2"},
	{Clave_Resultado: 2, Descripcion: "No Positivo Sars-Cov-2"},
	{Clave_Resultado: 3, Descripcion: "Resultado Pendiente"}
]),

db.Resultado.find()

--Colección Sector

db.Sector.insertMany([
	{Clave_Sector: 1, Descripcion: "CRUZ ROJA"},
	{Clave_Sector: 2, Descripcion: "DIF"},
	{Clave_Sector: 3, Descripcion: "ESTATAL"},
	{Clave_Sector: 4, Descripcion: "IMSS"},
	{Clave_Sector: 5, Descripcion: "IMSS-BIENESTAR"},
	{Clave_Sector: 6, Descripcion: "ISSSTE"},
	{Clave_Sector: 7, Descripcion: "MUNICIPAL"},
	{Clave_Sector: 8, Descripcion: "PEMEX"},
	{Clave_Sector: 9, Descripcion: "PRIVADA"},
	{Clave_Sector: 10, Descripcion: "SEDENA"},
	{Clave_Sector: 11, Descripcion: "SEMAR"},
	{Clave_Sector: 12, Descripcion: "SSA"},
	{Clave_Sector: 13, Descripcion: "UNIVERSITARIO"},
	{Clave_Sector: 99, Descripcion: "NO ESPECIFICADO"}
]),

db.Sector.find()

--Colección Nacionalidad

db.Nacionalidad.insertOne(
   { 
		Clave_Nacionalidad: 1, 
     	Descripcion: "Mexicana",   
   }
)
db.Nacionalidad.insertOne(
   { 
		Clave_Nacionalidad: 2, 
     	Descripcion: "Extranjera",   
   }
)
db.Nacionalidad.insertOne(
   { 
		Clave_Nacionalidad: 99, 
     	Descripcion: "No especificado",   
   }
)

db.Nacionalidad.find()

---Colección Sexo 

db.Sexo.insertMany([
	{Clave_Sexo: 1, Descripcion: "Mujer"},
	{Clave_Sexo: 2, Descripcion: "Hombre"},
	{Clave_Sexo: 99, Descripcion: "No especificado"}
]),

db.Sexo.find()

--Colección Tipo_Paciente

db.Tipo_Paciente.insertMany([
	{Clave_Tipo_Paciente: 1, Descripcion: "Ambulatorio"},
	{Clave_Tipo_Paciente: 2, Descripcion: "Hospitalizado"},
	{Clave_Tipo_Paciente: 99, Descripcion: "No especificado"}
]),

db.Tipo_Paciente.find()

--Colección Si_No

db.Si_No.insertMany([
	{Clave_Si_No: 1, Descripcion: "Si"},
	{Clave_Si_No: 2, Descripcion: "No"},
	{Clave_Si_No: 97, Descripcion: "No aplica"},
	{Clave_Si_No: 98, Descripcion: "Se ignora"},
	{Clave_Si_No: 99, Descripcion: "No especificado"}
]),

db.Si_No.find()

--Colección Casos_Confirmados

db.Casos_Confirmados.insertMany([
	{Id: 1, Clave_Entidad: 9, Sexo: "Masculino", Edad: 23, Fecha: "23/03/2020", Clave_Origen: 1},
	{Id: 1, Clave_Entidad: 9, Sexo: "Masculino", Edad: 23, Fecha: "23/03/2020", Clave_Origen: 1},	
	{Id: 2, Clave_Entidad: 9, Sexo: "Masculino",  Edad: 49, Fecha: "13/04/2020", Clave_Origen: 1},
	{Id: 3, Clave_Entidad: 8, Sexo: "Femenino", Edad: 67, Fecha: "15/04/2020", Clave_Origen: 1},
	{Id: 4, Clave_Entidad: 30, Sexo: "Femenino", Edad: 41, Fecha: "27/04/2020", Clave_Origen: 1},
	{Id: 5, Clave_Entidad: 15, Sexo: "Masculino", Edad: 43,Fecha: "6/06/2020",  Clave_Origen: 1},
	{Id: 6, Clave_Entidad: 15, Sexo: "Femenino", Edad: 47, Fecha: "9/06/2020", Clave_Origen: 1},
	{Id: 7, Clave_Entidad: 15, Sexo: "Masculino", Edad: 54, Fecha: "12/06/2020", Clave_Origen: 1},
	{Id: 8, Clave_Entidad: 20, Sexo: "Femenino", Edad: 33, Fecha: "31/03/2020", Clave_Origen: 1},
	{Id: 9, Clave_Entidad: 14, Sexo: "Masculino", Edad: 56, Fecha: "20/03/2020", Clave_Origen: 1},
	{Id: 10, Clave_Entidad: 31, Sexo: "Masculino", Edad: 30, Fecha: "15/04/2020", Clave_Origen: 1},
	{Id: 11, Clave_Entidad: 27, Sexo: "Masculino", Edad: 45, Fecha: "22/04/2020", Clave_Origen: 1},
	{Id: 12, Clave_Entidad: 25, Sexo: "Masculino", Edad: 30, Fecha: "9/05/2020", Clave_Origen: 1},
	{Id: 13, Clave_Entidad: 2, Sexo: "Masculino", Edad: 36, Fecha: "13/05/2020", Clave_Origen: 1},
	{Id: 14, Clave_Entidad: 15, Sexo: "Masculino", Edad: 59, Fecha: "25/05/2020", Clave_Origen: 1},
	{Id: 15, Clave_Entidad: 9, Sexo: "Masculino", Edad: 45, Fecha: "17/03/2020", Clave_Origen: 1},
	{Id: 16, Clave_Entidad: 21, Sexo: "Femenino", Edad: 47, Fecha: "1/04/2020", Clave_Origen: 1},
	{Id: 17, Clave_Entidad: 15, Sexo: "Masculino", Edad:24, Fecha: "7/04/2020", Clave_Origen: 1},
	{Id: 18, Clave_Entidad: 9, Sexo: "Masculino", Edad: 29, Fecha: "15/04/2020", Clave_Origen: 1},
	{Id: 19, Clave_Entidad: 15, Sexo: "Masculino", Edad: 40, Fecha: "28/04/2020", Clave_Origen: 1},
	{Id: 20, Clave_Entidad: 15, Sexo: "Femenino", Edad: 34, Fecha: "8/06/2020", Clave_Origen: 1},
	{Id: 21, Clave_Entidad: 15, Sexo: "Masculino", Edad: 42, Fecha: "8/06/2020", Clave_Origen: 1},
	{Id: 22, Clave_Entidad: 27, Sexo: "Masculino", Edad: 46, Fecha: "30/06/2020", Clave_Origen: 1},
	{Id: 23, Clave_Entidad: 9, Sexo: "Femenino", Edad: 60, Fecha: "1/04/2020", Clave_Origen: 1},
	{Id: 24, Clave_Entidad: 15, Sexo: "Masculino", Edad: 78, Fecha: "20/04/2020", Clave_Origen: 1},
	{Id: 25, Clave_Entidad: 23, Sexo: "Femenino", Edad: 82, Fecha: "2/04/2020", Clave_Origen: 1},
	{Id: 26, Clave_Entidad: 27, Sexo: "Masculino", Edad: 27, Fecha: "23/04/2020", Clave_Origen: 1},
	{Id: 27, Clave_Entidad: 2, Sexo: "Femenino", Edad: 50, Fecha: "4/05/2020", Clave_Origen: 1},
	{Id: 28, Clave_Entidad: 25, Sexo: "Masculino", Edad: 65, Fecha: "23/04/2020", Clave_Origen: 1},
	{Id: 30, Clave_Entidad: 15, Sexo: "Femenino", Edad: 50, Fecha: "19/06/2020", Clave_Origen: 1}
]),

db.Casos_Confirmados.find()

--Colección Covid19_General_MX

db.Covid19_General_MX.insertMany([
	{Id: 1, Clave_Sector: 4, Clave_Entidad_UM: 9, Clave_Sexo: 2, Clave_Entidad_RES: 9, Clave_Tipo_Paciente: 1, Fecha_Ingreso: "2020-03-23", Fecha_Sintomas: "2020-03-22", Fecha_DEF: "9999-99-99", Intubado: 97, Neumonia: 2, Edad: 28, Clave_Nacionalidad: 1, Diabetes: 2, EPOC: 2, Asma: 2, Inmusupr: 2, Hipertension: 2, Otra_Con: 2, Cardiovascular: 2, Obesidad: 2, Renal_Cronica: 2, Tabaquismo: 2, Otro_Caso: 99, Clave_Resultado: 1, UCI: 97},
	{Id: 1, Clave_Sector: 4, Clave_Entidad_UM: 9, Clave_Sexo: 2, Clave_Entidad_RES: 9, Clave_Tipo_Paciente: 2, Fecha_Ingreso: "2020-04-13", Fecha_Sintomas: "2020-04-04", Fecha_DEF: "9999-99-99", Intubado: 2, Neumonia: 1, Edad: 49, Clave_Nacionalidad: 1, Diabetes: 2, EPOC: 2, Asma: 2, Inmusupr: 2, Hipertension: 2, Otra_Con: 2, Cardiovascular: 2, Obesidad: 1, Renal_Cronica: 2, Tabaquismo: 2, Otro_Caso: 99, Clave_Resultado: 1, UCI: 2},
	{Id: 2, Clave_Sector: 4, Clave_Entidad_UM: 8, Clave_Sexo: 1, Clave_Entidad_RES: 8, Clave_Tipo_Paciente: 1, Fecha_Ingreso: "2020-04-15", Fecha_Sintomas: "2020-04-10", Fecha_DEF: "2020-04-19", Intubado: 2, Neumonia: 1, Edad: 67, Clave_Nacionalidad: 1, Diabetes: 2, EPOC: 2, Asma: 2, Inmusupr: 2, Hipertension: 1, Otra_Con: 2, Cardiovascular: 2, Obesidad: 1, Renal_Cronica: 2, Tabaquismo: 2, Otro_Caso: 99, Clave_Resultado: 1, UCI: 2},
	{Id: 3, Clave_Sector: 4, Clave_Entidad_UM: 30, Clave_Sexo: 1, Clave_Entidad_RES: 30, Clave_Tipo_Paciente: 1, Fecha_Ingreso: "2020-04-27", Fecha_Sintomas: "2020-04-17", Fecha_DEF: "9999-99-99", Intubado: 97, Neumonia: 2, Edad: 41, Clave_Nacionalidad: 1, Diabetes: 2, EPOC: 2, Asma: 2, Inmusupr: 2, Hipertension: 2, Otra_Con: 1, Cardiovascular: 2, Obesidad: 2, Renal_Cronica: 2, Tabaquismo: 2, Otro_Caso: 99, Clave_Resultado: 1, UCI: 97},
	{Id: 4, Clave_Sector: 3, Clave_Entidad_UM: 15, Clave_Sexo: 2, Clave_Entidad_RES: 15, Clave_Tipo_Paciente: 2, Fecha_Ingreso: "2020-06-06", Fecha_Sintomas: "2020-06-01", Fecha_DEF: "9999-99-99", Intubado: 2, Neumonia: 1, Edad: 43, Clave_Nacionalidad: 1, Diabetes: 2, EPOC: 2, Asma: 2, Inmusupr: 2, Hipertension: 2, Otra_Con: 2, Cardiovascular: 2, Obesidad: 2, Renal_Cronica: 2, Tabaquismo: 2, Otro_Caso: 1, Clave_Resultado: 1, UCI: 2},
	{Id: 5, Clave_Sector: 3, Clave_Entidad_UM: 15, Clave_Sexo: 1, Clave_Entidad_RES: 15, Clave_Tipo_Paciente: 1, Fecha_Ingreso: "2020-06-09", Fecha_Sintomas: "2020-06-05", Fecha_DEF: "9999-99-99", Intubado: 97, Neumonia: 2, Edad: 47, Clave_Nacionalidad: 1, Diabetes: 2, EPOC: 2, Asma: 2, Inmusupr: 2, Hipertension: 2, Otra_Con: 2, Cardiovascular: 2, Obesidad: 2, Renal_Cronica: 2, Tabaquismo: 2, Otro_Caso: 1, Clave_Resultado: 1, UCI: 97},
	{Id: 6, Clave_Sector: 3, Clave_Entidad_UM: 15, Clave_Sexo: 2, Clave_Entidad_RES: 15, Clave_Tipo_Paciente: 1, Fecha_Ingreso: "2020-06-12", Fecha_Sintomas: "2020-06-08", Fecha_DEF: "2020-06-18", Intubado: 97, Neumonia: 1, Edad: 54, Clave_Nacionalidad: 1, Diabetes: 2, EPOC: 2, Asma: 2, Inmusupr: 2, Hipertension: 2, Otra_Con: 2, Cardiovascular: 2, Obesidad: 2, Renal_Cronica: 2, Tabaquismo: 2, Otro_Caso: 2, Clave_Resultado: 1, UCI: 97},
	{Id: 7, Clave_Sector: 4, Clave_Entidad_UM: 20, Clave_Sexo: 1, Clave_Entidad_RES: 20, Clave_Tipo_Paciente: 1, Fecha_Ingreso: "2020-03-31", Fecha_Sintomas: "2020-03-25", Fecha_DEF: "9999-99-99", Intubado: 97, Neumonia: 2, Edad: 33, Clave_Nacionalidad: 1, Diabetes: 2, EPOC: 2, Asma: 2, Inmusupr: 2, Hipertension: 2, Otra_Con: 2, Cardiovascular: 2, Obesidad: 2, Renal_Cronica: 2, Tabaquismo: 2, Otro_Caso: 99, Clave_Resultado: 1, UCI: 97},
	{Id: 8, Clave_Sector: 4, Clave_Entidad_UM: 14, Clave_Sexo: 2, Clave_Entidad_RES: 14, Clave_Tipo_Paciente: 2, Fecha_Ingreso: "2020-03-20", Fecha_Sintomas: "2020-03-20", Fecha_DEF: "2020-05-02", Intubado: 2, Neumonia: 1, Edad: 56, Clave_Nacionalidad: 1, Diabetes: 2, EPOC: 2, Asma: 2, Inmusupr: 1, Hipertension: 1, Otra_Con: 2, Cardiovascular: 2, Obesidad: 2, Renal_Cronica: 2, Tabaquismo: 2, Otro_Caso: 99, Clave_Resultado: 1, UCI: 2},
	{Id: 9, Clave_Sector: 4, Clave_Entidad_UM: 31, Clave_Sexo: 2, Clave_Entidad_RES: 31, Clave_Tipo_Paciente: 1, Fecha_Ingreso: "2020-04-15", Fecha_Sintomas: "2020-04-13", Fecha_DEF: "9999-99-99", Intubado: 97, Neumonia: 2, Edad: 30, Clave_Nacionalidad: 1, Diabetes: 2, EPOC: 2, Asma: 2, Inmusupr: 2, Hipertension: 2, Otra_Con: 2, Cardiovascular: 2, Obesidad: 2, Renal_Cronica: 2, Tabaquismo: 2, Otro_Caso: 99, Clave_Resultado: 1, UCI: 97},
	{Id: 10, Clave_Sector: 3, Clave_Entidad_UM: 27, Clave_Sexo: 2, Clave_Entidad_RES: 27, Clave_Tipo_Paciente: 1, Fecha_Ingreso: "2020-04-22", Fecha_Sintomas: "2020-04-19", Fecha_DEF: "9999-99-99", Intubado: 97, Neumonia: 2, Edad: 45, Clave_Nacionalidad: 1, Diabetes: 2, EPOC: 2, Asma: 2, Inmusupr: 2, Hipertension: 2, Otra_Con: 2, Cardiovascular: 2, Obesidad: 1, Renal_Cronica: 2, Tabaquismo: 2, Otro_Caso: 1, Clave_Resultado: 1, UCI: 97},
	{Id: 11, Clave_Sector: 3, Clave_Entidad_UM: 25, Clave_Sexo: 2, Clave_Entidad_RES: 25, Clave_Tipo_Paciente: 2, Fecha_Ingreso: "2020-05-09", Fecha_Sintomas: "2020-04-26", Fecha_DEF: "9999-99-99", Intubado: 2, Neumonia: 1, Edad: 30, Clave_Nacionalidad: 1, Diabetes: 2, EPOC: 2, Asma: 2, Inmusupr: 2, Hipertension: 2, Otra_Con: 2, Cardiovascular: 2, Obesidad: 2, Renal_Cronica: 2, Tabaquismo: 2, Otro_Caso: 99, Clave_Resultado: 1, UCI: 2},
	{Id: 12, Clave_Sector: 3, Clave_Entidad_UM: 2, Clave_Sexo: 2, Clave_Entidad_RES: 2, Clave_Tipo_Paciente: 1, Fecha_Ingreso: "2020-05-13", Fecha_Sintomas: "2020-05-09", Fecha_DEF: "9999-99-99", Intubado: 97, Neumonia: 1, Edad: 36, Clave_Nacionalidad: 1, Diabetes: 2, EPOC: 2, Asma: 2, Inmusupr: 2, Hipertension: 2, Otra_Con: 1, Cardiovascular: 2, Obesidad: 1, Renal_Cronica: 2, Tabaquismo: 2, Otro_Caso: 1, Clave_Resultado: 1, UCI: 97},
	{Id: 13, Clave_Sector: 3, Clave_Entidad_UM: 15, Clave_Sexo: 2, Clave_Entidad_RES: 15, Clave_Tipo_Paciente: 1, Fecha_Ingreso: "2020-05-25", Fecha_Sintomas: "2020-05-13", Fecha_DEF: "9999-99-99", Intubado: 97, Neumonia: 2, Edad: 59, Clave_Nacionalidad: 1, Diabetes: 2, EPOC: 2, Asma: 2, Inmusupr: 2, Hipertension: 1, Otra_Con: 2, Cardiovascular: 2, Obesidad: 2, Renal_Cronica: 2, Tabaquismo: 2, Otro_Caso: 2, Clave_Resultado: 1, UCI: 97},
	{Id: 14, Clave_Sector: 4, Clave_Entidad_UM: 9, Clave_Sexo: 2, Clave_Entidad_RES: 9, Clave_Tipo_Paciente: 2, Fecha_Ingreso: "2020-03-17", Fecha_Sintomas: "2020-03-11", Fecha_DEF: "9999-99-99", Intubado: 2, Neumonia: 1, Edad: 45, Clave_Nacionalidad: 1, Diabetes: 2, EPOC: 2, Asma: 2, Inmusupr: 2, Hipertension: 2, Otra_Con: 2, Cardiovascular: 2, Obesidad: 2, Renal_Cronica: 2, Tabaquismo: 1, Otro_Caso: 2, Clave_Resultado: 1, UCI: 2},
	{Id: 15, Clave_Sector: 4, Clave_Entidad_UM: 21, Clave_Sexo: 1, Clave_Entidad_RES: 21, Clave_Tipo_Paciente: 2, Fecha_Ingreso: "2020-04-01", Fecha_Sintomas: "2020-03-30", Fecha_DEF: "9999-99-99", Intubado: 2, Neumonia: 2, Edad: 47, Clave_Nacionalidad: 1, Diabetes: 2, EPOC: 2, Asma: 2, Inmusupr: 2, Hipertension: 2, Otra_Con: 2, Cardiovascular: 2, Obesidad: 2, Renal_Cronica: 2, Tabaquismo: 2, Otro_Caso: 99, Clave_Resultado: 1, UCI: 2},
	{Id: 16, Clave_Sector: 4, Clave_Entidad_UM: 15, Clave_Sexo: 2, Clave_Entidad_RES: 15, Clave_Tipo_Paciente: 1, Fecha_Ingreso: "2020-04-07", Fecha_Sintomas: "2020-04-04", Fecha_DEF: "9999-99-99", Intubado: 97, Neumonia: 2, Edad: 24, Clave_Nacionalidad: 1, Diabetes: 2, EPOC: 2, Asma: 2, Inmusupr: 2, Hipertension: 1, Otra_Con: 2, Cardiovascular: 2, Obesidad: 2, Renal_Cronica: 1, Tabaquismo: 2, Otro_Caso: 99, Clave_Resultado: 1, UCI: 97},
	{Id: 17, Clave_Sector: 4, Clave_Entidad_UM: 9, Clave_Sexo: 2, Clave_Entidad_RES: 9, Clave_Tipo_Paciente: 1, Fecha_Ingreso: "2020-04-15", Fecha_Sintomas: "2020-04-14", Fecha_DEF: "9999-99-99", Intubado: 97, Neumonia: 2, Edad: 29, Clave_Nacionalidad: 1, Diabetes: 2, EPOC: 2, Asma: 2, Inmusupr: 2, Hipertension: 2, Otra_Con: 2, Cardiovascular: 2, Obesidad: 2, Renal_Cronica: 2, Tabaquismo: 2, Otro_Caso: 99, Clave_Resultado: 1, UCI: 97},
	{Id: 18, Clave_Sector: 4, Clave_Entidad_UM: 15, Clave_Sexo: 2, Clave_Entidad_RES: 15, Clave_Tipo_Paciente: 1, Fecha_Ingreso: "2020-04-28", Fecha_Sintomas: "2020-04-27", Fecha_DEF: "9999-99-99", Intubado: 97, Neumonia: 2, Edad: 40, Clave_Nacionalidad: 1, Diabetes: 2, EPOC: 2, Asma: 2, Inmusupr: 2, Hipertension: 2, Otra_Con: 2, Cardiovascular: 2, Obesidad: 2, Renal_Cronica: 2, Tabaquismo: 2, Otro_Caso: 99, Clave_Resultado: 1, UCI: 97},
	{Id: 19, Clave_Sector: 3, Clave_Entidad_UM: 15, Clave_Sexo: 1, Clave_Entidad_RES: 15, Clave_Tipo_Paciente: 2, Fecha_Ingreso: "2020-06-08", Fecha_Sintomas: "2020-06-05", Fecha_DEF: "9999-99-99", Intubado: 2, Neumonia: 1, Edad: 34, Clave_Nacionalidad: 1, Diabetes: 2, EPOC: 2, Asma: 2, Inmusupr: 2, Hipertension: 2, Otra_Con: 2, Cardiovascular: 2, Obesidad: 2, Renal_Cronica: 2, Tabaquismo: 2, Otro_Caso: 2, Clave_Resultado: 1, UCI: 2},
	{Id: 20, Clave_Sector: 3, Clave_Entidad_UM: 15, Clave_Sexo: 2, Clave_Entidad_RES: 15, Clave_Tipo_Paciente: 1, Fecha_Ingreso: "2020-06-08", Fecha_Sintomas: "2020-06-02", Fecha_DEF: "9999-99-99", Intubado: 97, Neumonia: 1, Edad: 42, Clave_Nacionalidad: 1, Diabetes: 2, EPOC: 2, Asma: 2, Inmusupr: 2, Hipertension: 2, Otra_Con: 2, Cardiovascular: 2, Obesidad: 2, Renal_Cronica: 2, Tabaquismo: 2, Otro_Caso: 2, Clave_Resultado: 1, UCI: 97}
]),

db.Covid19_General_MX.find()

--Tabla Covid_MX

db.Covid_MX.insertMany([
	{Casos_Confirmados: 3, Fallecido: 0, Fechas: "28/02/2020"},
	{Casos_Confirmados: 4, Fallecido: 0, Fechas: "29/02/2020"},
	{Casos_Confirmados: 5, Fallecido: 0, Fechas: "01/03/2020"},
	{Casos_Confirmados: 5, Fallecido: 0, Fechas: "02/03/2020"},
	{Casos_Confirmados: 5, Fallecido: 0, Fechas: "03/03/2020"},
	{Casos_Confirmados: 5, Fallecido: 0, Fechas: "04/03/2020"},
	{Casos_Confirmados: 5, Fallecido: 0, Fechas: "05/03/2020"},
	{Casos_Confirmados: 6, Fallecido: 0, Fechas: "06/03/2020"},
	{Casos_Confirmados: 6, Fallecido: 0, Fechas: "07/03/2020"},
	{Casos_Confirmados: 7, Fallecido: 0, Fechas: "08/03/2020"},
	{Casos_Confirmados: 7, Fallecido: 0, Fechas: "09/03/2020"},
	{Casos_Confirmados: 7, Fallecido: 0, Fechas: "10/03/2020"},
	{Casos_Confirmados: 11, Fallecido: 0, Fechas: "11/03/2020"},
	{Casos_Confirmados: 15, Fallecido: 0, Fechas: "12/03/2020"},
	{Casos_Confirmados: 26, Fallecido: 0, Fechas: "13/03/2020"},
	{Casos_Confirmados: 41, Fallecido: 0, Fechas: "14/03/2020"},
	{Casos_Confirmados: 53, Fallecido: 0, Fechas: "15/03/2020"},
	{Casos_Confirmados: 82, Fallecido: 0, Fechas: "16/03/2020"},
	{Casos_Confirmados: 93, Fallecido: 0, Fechas: "17/03/2020"},
	{Casos_Confirmados: 118, Fallecido: 0, Fechas: "18/03/2020"},
	{Casos_Confirmados: 164, Fallecido: 0, Fechas: "19/03/2020"},
	{Casos_Confirmados: 203, Fallecido: 0, Fechas: "20/03/2020"},
	{Casos_Confirmados: 251, Fallecido: 0, Fechas: "21/03/2020"},
	{Casos_Confirmados: 316, Fallecido: 0, Fechas: "22/03/2020"},
	{Casos_Confirmados: 367, Fallecido: 4, Fechas: "23/03/2020"},
	{Casos_Confirmados: 405, Fallecido: 5, Fechas: "24/03/2020"},
	{Casos_Confirmados: 475, Fallecido: 6, Fechas: "25/03/2020"},
	{Casos_Confirmados: 585, Fallecido: 8, Fechas: "26/03/2020"},
	{Casos_Confirmados: 717, Fallecido: 12, Fechas: "27/03/2020"},
	{Casos_Confirmados: 848, Fallecido: 16, Fechas: "28/03/2020"},
	{Casos_Confirmados: 993, Fallecido: 20, Fechas: "29/03/2020"},
	{Casos_Confirmados: 1094, Fallecido: 28, Fechas: "30/03/2020"},
	{Casos_Confirmados: 1215, Fallecido: 29, Fechas: "31/03/2020"},
	{Casos_Confirmados: 1378, Fallecido: 37, Fechas: "01/04/2020"},
	{Casos_Confirmados: 1510, Fallecido: 50, Fechas: "02/04/2020"},
	{Casos_Confirmados: 1688, Fallecido: 60, Fechas: "03/04/2020"},
	{Casos_Confirmados: 1890, Fallecido: 79, Fechas: "04/04/2020"},
	{Casos_Confirmados: 2143, Fallecido: 94, Fechas: "05/04/2020"},
	{Casos_Confirmados: 2439, Fallecido: 125, Fechas: "06/04/2020"},
	{Casos_Confirmados: 2785, Fallecido: 141, Fechas: "07/04/2020"},
	{Casos_Confirmados: 3181, Fallecido: 174, Fechas: "08/04/2020"},
	{Casos_Confirmados: 3441, Fallecido: 194, Fechas: "09/04/2020"},
	{Casos_Confirmados: 3844, Fallecido: 233, Fechas: "10/04/2020"},
	{Casos_Confirmados: 4219, Fallecido: 273, Fechas: "11/04/2020"},
	{Casos_Confirmados: 4661, Fallecido: 296, Fechas: "12/04/2020"},
	{Casos_Confirmados: 5014, Fallecido: 332, Fechas: "13/04/2020"},
	{Casos_Confirmados: 5399, Fallecido: 406, Fechas: "14/04/2020"},
	{Casos_Confirmados: 5847, Fallecido: 449, Fechas: "15/04/2020"},
	{Casos_Confirmados: 6297, Fallecido: 486, Fechas: "16/04/2020"},
	{Casos_Confirmados: 6875, Fallecido: 546, Fechas: "17/04/2020"},
	{Casos_Confirmados: 7497, Fallecido: 650, Fechas: "18/04/2020"},
	{Casos_Confirmados: 8261, Fallecido: 686, Fechas: "19/04/2020"},
	{Casos_Confirmados: 8772, Fallecido: 712, Fechas: "20/04/2020"},
	{Casos_Confirmados: 9501, Fallecido: 857, Fechas: "21/04/2020"},
	{Casos_Confirmados: 10544, Fallecido: 970, Fechas: "22/04/2020"},
	{Casos_Confirmados: 11633, Fallecido: 1069, Fechas: "23/04/2020"},
	{Casos_Confirmados: 12872, Fallecido: 1221, Fechas: "24/04/2020"},
	{Casos_Confirmados: 13842, Fallecido: 1305, Fechas: "25/04/2020"},
	{Casos_Confirmados: 14677, Fallecido: 1351, Fechas: "26/04/2020"},
	{Casos_Confirmados: 15529, Fallecido: 1434, Fechas: "27/04/2020"},
	{Casos_Confirmados: 16752, Fallecido: 1569, Fechas: "28/04/2020"},
	{Casos_Confirmados: 17799, Fallecido: 1732, Fechas: "29/04/2020"},
	{Casos_Confirmados: 19224, Fallecido: 1859, Fechas: "30/04/2020"},
	{Casos_Confirmados: 20739, Fallecido: 1972, Fechas: "01/05/2020"},
	{Casos_Confirmados: 22088, Fallecido: 2061, Fechas: "02/05/2020"},
	{Casos_Confirmados: 23471, Fallecido: 2154, Fechas: "03/05/2020"},
	{Casos_Confirmados: 24905, Fallecido: 2270, Fechas: "04/05/2020"},
	{Casos_Confirmados: 26025, Fallecido: 2507, Fechas: "05/05/2020"},
	{Casos_Confirmados: 27634, Fallecido: 2704, Fechas: "06/05/2020"},
	{Casos_Confirmados: 29616, Fallecido: 2961, Fechas: "07/05/2020"},
	{Casos_Confirmados: 31522, Fallecido: 3160, Fechas: "08/05/2020"},
	{Casos_Confirmados: 33460, Fallecido: 3353, Fechas: "09/05/2020"},
	{Casos_Confirmados: 35022, Fallecido: 3465, Fechas: "10/05/2020"},
	{Casos_Confirmados: 36327, Fallecido: 3573, Fechas: "11/05/2020"},
	{Casos_Confirmados: 38324, Fallecido: 3926, Fechas: "12/05/2020"},
	{Casos_Confirmados: 40186, Fallecido: 4220, Fechas: "13/05/2020"},
	{Casos_Confirmados: 42595, Fallecido: 4477, Fechas: "14/05/2020"},
	{Casos_Confirmados: 45032, Fallecido: 4767, Fechas: "15/05/2020"},
	{Casos_Confirmados: 47144, Fallecido: 5045, Fechas: "16/05/2020"},
	{Casos_Confirmados: 49219, Fallecido: 5177, Fechas: "17/05/2020"},
	{Casos_Confirmados: 51633, Fallecido: 5332, Fechas: "18/05/2020"},
	{Casos_Confirmados: 54346, Fallecido: 5666, Fechas: "19/05/2020"},
	{Casos_Confirmados: 56594, Fallecido: 6090, Fechas: "20/05/2020"},
	{Casos_Confirmados: 59567, Fallecido: 6510, Fechas: "21/05/2020"},
	{Casos_Confirmados: 62527, Fallecido: 6989, Fechas: "22/05/2020"},
	{Casos_Confirmados: 65856, Fallecido: 7179, Fechas: "23/05/2020"},
	{Casos_Confirmados: 68620, Fallecido: 7394, Fechas: "24/05/2020"},
	{Casos_Confirmados: 71105, Fallecido: 7633, Fechas: "25/05/2020"},
	{Casos_Confirmados: 74560, Fallecido: 8134, Fechas: "26/05/2020"},
	{Casos_Confirmados: 78023, Fallecido: 8597, Fechas: "27/05/2020"},
	{Casos_Confirmados: 81400, Fallecido: 9044, Fechas: "28/05/2020"},
	{Casos_Confirmados: 84627, Fallecido: 9415, Fechas: "29/05/2020"},
	{Casos_Confirmados: 87512, Fallecido: 9779, Fechas: "30/05/2020"},
	{Casos_Confirmados: 90664, Fallecido: 9930, Fechas: "31/05/2020"}
]),

db.Covid_MX.find()