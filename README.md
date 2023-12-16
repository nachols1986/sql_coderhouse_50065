# Marketplace Database

La "Marketplace Database" es una base de datos relacional diseñada para respaldar las operaciones y la lógica de negocio de una plataforma de comercio electrónico o marketplace en línea. Esta base de datos proporciona una estructura sólida y coherente para almacenar información relacionada con usuarios, productos, transacciones, reseñas, categorías, direcciones, carritos de compras, pagos y notificaciones.

## Características Principales
La base de datos "Marketplace Database" ofrece las siguientes características clave:

- **Usuarios:** Almacena información sobre los usuarios, incluyendo nombres de usuario, direcciones de correo electrónico, contraseñas y fechas de creación y actualización de cuentas. Cada usuario tiene un identificador único (ID) para facilitar su identificación en toda la base de datos.

- **Productos:** Permite el registro de productos, incluyendo detalles como nombre, descripción, precio y el ID del vendedor. Los productos pueden estar vinculados a categorías para una mejor organización.

- **Transacciones:** Registra las transacciones de compra entre compradores y vendedores, incluyendo el ID del comprador, el ID del vendedor, el ID del producto y el monto de la transacción. Esto facilita el seguimiento de las ventas y las ganancias.

- **Reseñas:** Permite a los usuarios calificar y comentar sobre productos. Esto brinda información a otros compradores y puede influir en la decisión de compra. Cada reseña incluye el ID del usuario, el ID del producto, una calificación y un comentario.

- **Categorías:** Ofrece una forma de organizar y categorizar los productos. Cada categoría tiene un nombre único y un ID.

- **Relación entre Productos y Categorías:** Establece una relación entre los productos y las categorías a las que pertenecen. Un producto puede estar relacionado con una o varias categorías.

- **Direcciones:** Permite a los usuarios guardar direcciones de envío y facturación en sus perfiles. Esto es útil para facilitar la entrega de productos.

- **Carritos de Compras:** Registra los productos que un usuario ha agregado a su carrito de compras, incluyendo la cantidad de cada producto. Esto simplifica el proceso de compra y el seguimiento de los productos seleccionados.

- **Pagos:** Permite el registro de pagos realizados por los usuarios. Cada pago incluye el ID del usuario y el monto del pago, junto con la fecha y hora del pago.

- **Notificaciones:** Registra las notificaciones enviadas a los usuarios. Cada notificación tiene un mensaje y un estado (leído o no leído).

## Uso de la Base de Datos
La "Marketplace Database" está diseñada para ser utilizada por aplicaciones web de comercio electrónico o marketplaces en línea. Puede ser integrada en una variedad de sistemas y aplicaciones que requieren un backend de base de datos robusto para gestionar usuarios, productos y transacciones.

Los desarrolladores pueden acceder a esta base de datos a través de consultas SQL y utilizarla para crear aplicaciones que brinden a los usuarios la capacidad de registrarse, buscar productos, realizar compras, calificar productos y recibir notificaciones.

## Contribuciones
Si desea contribuir al desarrollo o mejorar la "Marketplace Database", le invitamos a hacerlo. Puede enviar pull requests y sugerencias de mejora para hacer que esta base de datos sea aún más útil y eficiente.

¡Esperamos que esta base de datos sea de utilidad para sus proyectos de comercio electrónico o marketplace!
