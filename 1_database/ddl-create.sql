
CREATE TABLE departamento (
    id NUMBER GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) CONSTRAINT pk_departamento PRIMARY KEY,
    nombre VARCHAR2(64) NOT NULL
);

CREATE TABLE municipio (
    id NUMBER GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) CONSTRAINT pk_municipio PRIMARY KEY,
    nombre VARCHAR2(64) NOT NULL,
    departamento_id NUMBER NOT NULL,
    CONSTRAINT fk_departamento FOREIGN KEY (departamento_id) REFERENCES departamento(id)
);

CREATE TABLE poblado (
    id NUMBER GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) CONSTRAINT pk_poblado PRIMARY KEY,
    nombre VARCHAR2(64) NOT NULL,
    municipio_id NUMBER NOT NULL,
    CONSTRAINT fk_municipio1 FOREIGN KEY (municipio_id) REFERENCES municipio(id)
);

CREATE TABLE acceso_tecnologico (
    id NUMBER GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) CONSTRAINT pk_acceso PRIMARY KEY,
    medio_tecnologico VARCHAR2(64) NOT NULL,
    utiliza VARCHAR2(64) NOT NULL,
    cantidad NUMBER NOT NULL,
    municipio_id NUMBER NOT NULL,
    CONSTRAINT fk_municipio2 FOREIGN KEY (municipio_id) REFERENCES municipio(id)
);

CREATE TABLE familia (
    id NUMBER GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) CONSTRAINT pk_familia PRIMARY KEY,
    codigo VARCHAR2(64) NOT NULL,
    nucleo VARCHAR2(64) NOT NULL,
    poblado_id NUMBER NOT NULL,
    CONSTRAINT fk_poblado FOREIGN KEY (poblado_id) REFERENCES poblado(id)
);

CREATE TABLE estado_conyugal (
    id NUMBER GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) CONSTRAINT pk_estado_conyugal PRIMARY KEY,
    nombre VARCHAR2(64) NOT NULL
);

CREATE TABLE grupo_etnico (
    id NUMBER GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) CONSTRAINT pk_grupo_etnico PRIMARY KEY,
    nombre VARCHAR2(64) NOT NULL
);

CREATE TABLE persona (
    id NUMBER GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) CONSTRAINT pk_persona PRIMARY KEY,
    discapacidad VARCHAR2(64),
    razon_desercion VARCHAR2(64),
    sabe_leer CHAR(1) NOT NULL,
    categoria_ocupacional VARCHAR2(64),
    asistencia_centro_educativo VARCHAR2(64),
    edad NUMBER NOT NULL,
    fecha DATE NOT NULL,
    nivel_aprobado VARCHAR2(64) NOT NULL,
    nivel_inscrito VARCHAR2(64) NOT NULL,
    es_jefe_familiar CHAR(1) NOT NULL,
    sexo VARCHAR2(20) NOT NULL,
    familia_id NUMBER NOT NULL,
    estado_conyugal_id NUMBER NOT NULL,
    grupo_etnico_id NUMBER NOT NULL,
    CONSTRAINT fk_familia FOREIGN KEY (familia_id) REFERENCES familia(id),
    CONSTRAINT fk_estado_conyugal FOREIGN KEY (estado_conyugal_id) REFERENCES estado_conyugal(id),
    CONSTRAINT fk_grupo_etnico FOREIGN KEY (grupo_etnico_id) REFERENCES grupo_etnico(id)
);




