
DROP database post;

create database post;
\c post
CREATE TABLE post
(
    id serial,
    nombre_de_usuario varchar(25),
    fecha_de_creacion date,
    contenido varchar(255),
    descripcion varchar(255),
    PRIMARY KEY (id)
);

insert into post
    (nombre_de_usuario,fecha_de_creacion, contenido,descripcion)
values
    ('Pamela', '2021-06-08', 'programadora', 'le gusta programar en RoR');
insert into post
    (nombre_de_usuario,fecha_de_creacion,contenido,descripcion)
values
    ('Pamela', '2021-06-08', 'lectora', 'le gusta leer Harrypotter');
INSERT INTO post
    (nombre_de_usuario,fecha_de_creacion,contenido,descripcion)
VALUES
    ('Carlos', '2021-06-08', 'deportista', 'le gusta jugar a la pelota');

ALTER TABLE post ADD titulo VARCHAR(25);

UPDATE post SET titulo='titulo1' WHERE id=1;
UPDATE post SET titulo='titulo2' WHERE id=2;
UPDATE post SET titulo='titulo3' WHERE id=3;

INSERT INTO post
    (nombre_de_usuario,fecha_de_creacion,contenido,descripcion, titulo)
VALUES
    ('Pedro', '2021-06-08', 'deportista', 'le gusta jugar con un balón', 'titulo4');
INSERT INTO post
    (nombre_de_usuario,fecha_de_creacion,contenido,descripcion, titulo)
VALUES
    ('Pedro', '2021-06-08', 'tomador', 'le gusta tomar chela', 'titulo5');

DELETE FROM post WHERE nombre_de_usuario = 'Carlos';

INSERT INTO post
    (nombre_de_usuario,fecha_de_creacion,contenido,descripcion,titulo)
VALUES
    ('Carlos', '2021-06-08', 'deportista', 'le gusta jugar a la pelota', 'titulo6');


-- Parte 2 
CREATE TABLE comentarios
(
    id SERIAL,
    post_id INT,
    fecha DATE,
    hora TIME,
    contenido VARCHAR,
    PRIMARY KEY (id),
    FOREIGN KEY (post_id) REFERENCES post (id)
);

-- Agregar comentarios para Pamela
INSERT INTO comentarios
    (post_id, fecha, hora, contenido)
VALUES(1, '2021-06-08', current_time, 'Contenido Pamela 1');

INSERT INTO comentarios
    (post_id, fecha, hora, contenido)
VALUES(1, '2021-06-08', current_time, 'Contenido Pamela 1');

-- Agregar comentarios para Carlos

INSERT INTO comentarios
    (post_id, fecha, hora, contenido)
VALUES(6, '2021-06-08', current_time, 'contenido Carlos 6');

INSERT INTO comentarios
    (post_id, fecha, hora, contenido)
VALUES(6, '2021-06-08', current_time, 'contenido Carlos 6');

INSERT INTO comentarios
    (post_id, fecha, hora, contenido)
VALUES(6, '2021-06-08', current_time, 'contenido Carlos 6');

INSERT INTO comentarios
    (post_id, fecha, hora, contenido)
VALUES(6, '2021-06-08', current_time, 'contenido Carlos 6');

-- Se crea un post para Margarita
INSERT INTO post
    (nombre_de_usuario,fecha_de_creacion,contenido,descripcion, titulo)
VALUES
    ('Margarita', '2021-06-08', 'lectora', 'le gusta jugar con un balón', 'titulo7');

-- Se agregan comentarios par Margarita

INSERT INTO comentarios
    (post_id, fecha, hora, contenido)
VALUES(7, '2021-06-08', current_time, 'contenido Margarita 7');
INSERT INTO comentarios
    (post_id, fecha, hora, contenido)
VALUES(7, '2021-06-08', current_time, 'contenido Margarita 7');
INSERT INTO comentarios
    (post_id, fecha, hora, contenido)
VALUES(7, '2021-06-08', current_time, 'contenido Margarita 7');
INSERT INTO comentarios
    (post_id, fecha, hora, contenido)
VALUES(7, '2021-06-08', current_time, 'contenido Margarita 7');
INSERT INTO comentarios
    (post_id, fecha, hora, contenido)
VALUES(7, '2021-06-08', current_time, 'contenido Margarita 7');
