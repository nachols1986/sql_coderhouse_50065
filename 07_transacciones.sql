-- Iniciar una transacción en la tabla 'product'
START transaction;

-- Eliminar algunos registros en la tabla 'product' (o reemplazar por inserción si está vacía)

-- Comentar la sentencia Rollback (no ejecutar)
-- ROLLBACK;

-- Comentar la sentencia Commit (no ejecutar)
-- COMMIT;

-- Iniciar una transacción en la tabla 'review'
START transaction;

-- Insertar ocho nuevos registros de productos deportivos en la tabla 'product'
INSERT INTO product
            (
                        name,
                        description,
                        price,
                        seller_id,
                        created_at,
                        updated_at
            )
            VALUES
            (
                        'Pelota de Baloncesto Nike',
                        'Pelota de baloncesto oficial de la NBA',
                        29.99,
                        3,
                        Now(),
                        Now()
            )
            ,
            (
                        'Botas de Senderismo Columbia',
                        'Botas de senderismo impermeables',
                        75.0,
                        2,
                        Now(),
                        Now()
            )
            ,
            (
                        'Raqueta de Pádel Dunlop',
                        'Raqueta de pádel de alta calidad',
                        59.9,
                        5,
                        Now(),
                        Now()
            )
            ,
            (
                        'Balón de Volleyball Mikasa',
                        'Balón de volleyball profesional',
                        39.5,
                        6,
                        Now(),
                        Now()
            );

-- Agregar un savepoint después de la inserción del cuarto registro
savepoint savepoint4;

-- Continuar con la inserción de registros
INSERT INTO product
            (
                        name,
                        description,
                        price,
                        seller_id,
                        created_at,
                        updated_at
            )
            VALUES
            (
                        'Cascos de Ciclismo Specialized',
                        'Cascos de ciclismo con diseño aerodinámico',
                        45.0,
                        1,
                        Now(),
                        Now()
            )
            ,
            (
                        'Bicicleta de Montaña Trek',
                        'Bicicleta de montaña de alto rendimiento',
                        899.0,
                        8,
                        Now(),
                        Now()
            )
            ,
            (
                        'Palos de Golf Callaway',
                        'Set de palos de golf para jugadores avanzados',
                        199.9,
                        4,
                        Now(),
                        Now()
            )
            ,
            (
                        'Mochila de Senderismo North Face',
                        'Mochila resistente para senderismo',
                        49.99,
                        7,
                        Now(),
                        Now()
            );

-- Agregar un savepoint después de la inserción del octavo registro
savepoint savepoint8;

-- Comentar la sentencia para eliminar el savepoint de los primeros 4 registros insertados
-- ROLLBACK TO savepoint4;