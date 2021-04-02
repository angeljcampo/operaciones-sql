-- parte 1

-- pregunta 1
CREATE DATABASE post;
-- pregunta 2
CREATE TABLE post(id SERIAL UNIQUE, nombre_usuario VARCHAR(20),fecha_Creacion DATE,contenido VARCHAR(200),descripcion VARCHAR(300));
-- pregunta 3
INSERT INTO post(nombre_usuario,fecha_creacion,contenido,descripcion) VALUES ('Pamela','2021-03-12','Felicidad','Todo va a salir bien cuando se es positivo');
INSERT INTO post(nombre_usuario,fecha_creacion,contenido,descripcion) VALUES ('Pamela','2021-03-20','Emocion','Las emociones son importantes en la vida');
INSERT INTO post(nombre_usuario,fecha_creacion,contenido,descripcion) VALUES ('Carlos','2021-03-25','Futbol','El futbol siempre unira a las personas');
-- pregunta 4
ALTER TABLE post ADD titulo VARCHAR(200);
-- pregunta 5
UPDATE post SET titulo='Emociones' WHERE id=1;
UPDATE post SET titulo='Vida' WHERE id=2;
UPDATE post SET titulo='Deportes' WHERE id=3;
--pregunta 6
INSERT INTO post(nombre_usuario,fecha_creacion,contenido,descripcion,titulo) VALUES ('Pedro','2021-03-15','Programar','La tecnologia avanza cada vez mas','Tecnologia');
INSERT INTO post(nombre_usuario,fecha_creacion,contenido,descripcion,titulo) VALUES ('Pedro','2021-03-15','Desarrollo Web','Sirve para crear paginas web,apps,entre otras cosas','Tecnologia');
-- pregunta 7
DELETE FROM post WHERE nombre_usuario='Carlos';
-- pregunta 8 
INSERT INTO post(nombre_usuario,fecha_creacion,contenido,descripcion,titulo) VALUES ('Carlos','2021-03-20','Vinos','Las catas de vinos son muy comunes en Chile','Alcohol');


-- Parte 2

-- pregunta 9 (aqui tambien agregue el PRIMARY KEY de post)
  ALTER TABLE post ADD PRIMARY KEY(id);

CREATE TABLE comentarios(id SMALLINT, fecha_hora_creacion TIMESTAMP,contenido VARCHAR(300), post_id SMALLINT, FOREIGN KEY(post_id) REFERENCES post(id));

-- pregunta 10

INSERT INTO comentarios (fecha_hora_creacion,contenido, post_id) VALUES 
('2021-03-12, 15:05:20','Las emociones pueden variar',1),
('2021-12-20, 20:05:20','Necesitamos alargar este post',2),
('2021-12-21, 18:15:20','Hay que explicar los tipos de vinos',9), 
('2021-12-22, 05:05:13','Definir cuando se hara la cata',9),
('2021-12-23, 21:12:45','Se debe definir lugar para la cata',9),
('2021-12-24, 22:47:12','Hablar con el personal del lugar',9);

UPDATE comentarios SET 

-- Pregunta 11

INSERT INTO post(nombre_usuario,fecha_creacion,contenido,descripcion,titulo) VALUES ('Margarita','2021-01-05','Lorem','Lorem','Lorem');

-- Pregunta 12

INSERT INTO comentarios(fecha_hora_creacion,contenido,post_id) VALUES -- El ID de Margarita es 10
('2021-01-05 18:13:04','Lorem',10),
('2021-01-05 18:13:04','Lorem',10),
('2021-01-05 18:13:04','Lorem',10),
('2021-01-05 18:13:04','Lorem',10),
('2021-01-05 18:13:04','Lorem',10);


-- FIN

