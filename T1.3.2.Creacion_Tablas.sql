-- Sentencia para crear las tablas correspondientes a los datos COVID-19MX

CREATE TABLE "Covid19_General_MX" (
	"Id"	INTEGER,
	"Clave_Sector"	INTEGER,
	"Clave_Entidad_UM"	INTEGER,
	"Clave_Sexo"	INTEGER,
	"Clave_Entidad_RES"	INTEGER,
	"Clave_Tipo_Paciente"	INTEGER,
	"Fecha_Ingreso"	DATETIME,
	"Fecha_Sintomas"	DATETIME,
	"Fecha_DEF"	DATETIME,
	"Intubado"	INTEGER,
	"Neumonia"	INTEGER,
	"Edad"	INTEGER,
	"Clave_Nacionalidad"	INTEGER,
	"Diabetes"	INTEGER,
	"EPOC"	INTEGER,
	"Asma"	INTEGER,
	"Inmusupr"	INTEGER,
	"Hipertension"	INTEGER,
	"Otra_Con"	INTEGER,
	"Cardiovascular"	INTEGER,
	"Obesidad"	INTEGER,
	"Renal_Cronica"	INTEGER,
	"Tabaquismo"	INTEGER,
	"Otro_Caso"	INTEGER,
	"Clave_Resultado"	INTEGER,
	"UCI"	INTEGER,
	PRIMARY KEY("Id","Clave_Sector","Clave_Entidad_UM","Clave_Sexo","Clave_Entidad_RES","Clave_Tipo_Paciente","Clave_Nacionalidad","Clave_Resultado")
);

CREATE TABLE "Covid_MX" (
	"Casos_Confirmados"	INTEGER,
	"Fallecido"	INTEGER,
	"Fechas"	DATETIME
);

CREATE TABLE "Resultado" (
	"Clave_Resultado"	INTEGER,
	"Descripcion"	TEXT,
	PRIMARY KEY("Clave_Resultado")
);

CREATE TABLE "Entidad" (
	"Clave_Entidad"	INTEGER,
	"Entidad_Federativa"	TEXT,
	"Abreviatura"	TEXT,
	PRIMARY KEY("Clave_Entidad")
);

CREATE TABLE "Nacionalidad" (
	"Clave_Nacionalidad"	INTEGER,
	"Descripcion"	TEXT,
	PRIMARY KEY("Clave_Nacionalidad")
);

CREATE TABLE "Origen" (
	"Clave_Origen"	INTEGER,
	"Descripcion"	TEXT,
	PRIMARY KEY("Clave_Origen")
);

CREATE TABLE "Sector" (
	"Clave_Sector"	INTEGER,
	"Descripcion"	TEXT,
	PRIMARY KEY("Clave_Sector")
);

CREATE TABLE "Sexo" (
	"Clave_Sexo"	INTEGER,
	"Descripcion"	TEXT,
	PRIMARY KEY("Clave_Sexo")
);

CREATE TABLE "Si_No" (
	"Clave_Si_No"	INTEGER,
	"Descripcion"	TEXT,
	PRIMARY KEY("Clave_Si_No")
);

CREATE TABLE "Tipo_Paciente" (
	"Clave_Tipo_Paciente"	INTEGER,
	"Descripcion"	TEXT,
	PRIMARY KEY("Clave_Tipo_Paciente")
);

CREATE TABLE "Casos_Confirmados" (
	"Id"	INTEGER,
	"Clave_Entidad"	INTEGER,
	"Sexo"	TEXT,
	"Edad"	INTEGER,
	"Fecha"	DATETIME,
	"Clave_Origen"	INTEGER,
	PRIMARY KEY("Id","Clave_Entidad","Clave_Origen")
);




