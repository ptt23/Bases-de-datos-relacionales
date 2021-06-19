

DROP DATABASE peliculas;

CREATE DATABASE peliculas;
\c peliculas
CREATE TABLE peliculas
(
    id INT,
    pelicula VARCHAR,
    anio INT,
    director VARCHAR,
    PRIMARY KEY (id)
);

CREATE TABLE reparto
(
    pelicula_reparto INT,
    actor VARCHAR,
    FOREIGN KEY (pelicula_reparto) REFERENCES peliculas(id)
);


\copy peliculas FROM '/Users/lorenzov/Desktop/Cursos/Desafio_Latam/G46/Base de Datos/Clase/peliculas.csv' csv header;
\copy reparto FROM '/Users/lorenzov/Desktop/Cursos/Desafio_Latam/G46/Base de Datos/Clase/reparto.csv' csv header;

-- Listar a todos los actores que aparecen en la película "Titanic".

SELECT id
FROM peliculas
WHERE pelicula='Titanic';

--Listar a todos los actores que aparecen en la película "Titanic"

SELECT actor
FROM reparto
WHERE pelicula_reparto=2;

--Consultar en cuántas películas del top 100 participa Harrison Ford.

SELECT COUNT (reparto)
FROM reparto
WHERE actor='Harrison Ford';

--Indicar las películas estrenadas entre los años 1990 y 1999 ordenadas por título de manera ascendente.

SELECT pelicula, anio
FROM peliculas
WHERE anio BETWEEN 1990 AND 1999
ORDER BY pelicula ASC;

--Hacer una consulta SQL que muestre los títulos con su longitud, la longitud debe ser nombrado para la consulta como “longitud_titulo”.

SELECT pelicula, LENGTH(pelicula) AS longitud_titulo
FROM peliculas;

-- Consultar cual es la longitud más grande entre todos los títulos de las películas.

SELECT MAX(LENGTH(pelicula))
FROM peliculas;

SELECT 
