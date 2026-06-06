-- PostgreSQL initialization script
-- Automatically executed on first container start (clean volume).
-- Subsequent starts skip this file entirely — safe to leave mounted.

CREATE TABLE IF NOT EXISTS training_samples (
    id            SERIAL PRIMARY KEY,
    sepal_length  FLOAT NOT NULL,
    sepal_width   FLOAT NOT NULL,
    petal_length  FLOAT NOT NULL,
    petal_width   FLOAT NOT NULL,
    species       VARCHAR(20) NOT NULL
);

INSERT INTO training_samples (sepal_length, sepal_width, petal_length, petal_width, species) VALUES
-- setosa cluster
(5.1, 3.5, 1.4, 0.2, 'setosa'),
(4.9, 3.0, 1.4, 0.2, 'setosa'),
(4.7, 3.2, 1.3, 0.2, 'setosa'),
(4.6, 3.1, 1.5, 0.2, 'setosa'),
(5.0, 3.6, 1.4, 0.2, 'setosa'),
-- versicolor cluster
(7.0, 3.2, 4.7, 1.4, 'versicolor'),
(6.4, 3.2, 4.5, 1.5, 'versicolor'),
(6.9, 3.1, 4.9, 1.5, 'versicolor'),
(5.5, 2.3, 4.0, 1.3, 'versicolor'),
(6.5, 2.8, 4.6, 1.5, 'versicolor'),
-- virginica cluster
(6.3, 3.3, 6.0, 2.5, 'virginica'),
(5.8, 2.7, 5.1, 1.9, 'virginica'),
(7.1, 3.0, 5.9, 2.1, 'virginica'),
(6.3, 2.9, 5.6, 1.8, 'virginica'),
(6.5, 3.0, 5.8, 2.2, 'virginica');
