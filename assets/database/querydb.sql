drop database if exists swsanjuan;

create database swsanjuan;

-- https://abarrotero.com/2019/04/09/productos-debe-tener-tienda-de-abarrotes/
use swsanjuan;

create table categoria (
    id int not null auto_increment,
    nombre varchar(100) default null,
    imagen varchar(500) default "https://www.lucushost.com/blog/wp-content/uploads/2019/06/a%C3%B1adir-categor%C3%ADas-en-WordPress.png",
    primary key(id)
) Engine = InnoDB;

create table producto (
    id int not null auto_increment,
    nombre varchar(100) default null,
    imagen varchar(500) default "https://saboryestilo.com.mx/wp-content/uploads/2019/03/que-alimentos-aportan-mas-proteinas-1-1200x720.jpg",
    primary key(id),
    id_categoria int,
    foreign key(id_categoria) references categoria(id) on delete no action
) Engine = InnoDB;

create table articulo (
    id int not null auto_increment,
    nombre varchar(100) default null,
    cantidad int default 0,
    precio decimal(5, 2) default 0.0,
    imagen varchar(500) default "https://img.freepik.com/vector-premium/cliente-compra-articulo-venta-concepto-tienda-linea-ilustracion-estilo-diseno-dibujado-mano-esquema_90661-875.jpg?w=2000",
    primary key(id),
    id_producto int,
    foreign key(id_producto) references producto(id) on delete no action
) Engine = InnoDB;

-- Insertando categorías...
insert into
    categoria(nombre)
values
    ("Abarrotes"),
    ("Enlatados"),
    ("Lácteos"),
    ("Botanas"),
    ("Confitería"),
    ("Harinas"),
    ("Frutas y verduras"),
    ("Bebidas"),
    ("Bebidas alcohólicas"),
    ("Alimentos preparados"),
    ("Medicamentos OTC"),
    ("Higiene personal"),
    ("Uso doméstico"),
    ("Congelados"),
    ("Jarcería y productos de limpieza"),
    ("Papelería"),
    ("Otros");

-- Insertando productos...
insert into
    producto (nombre, id_categoria)
values
    ('Aceites comestibles', 1),
    ('Aderezos', 1),
    ('Arroz', 1),
    ('Consomé', 1),
    ('Crema de cacahuate', 1),
    ('Crema para café', 1),
    ('Puré de tomate', 1),
    ('Alimento para bebé', 1),
    ('Alimento para mascotas', 1),
    ('Atole', 1),
    ('Avena', 1),
    ('Azúcar', 1),
    ('Café', 1),
    ('Cereales', 1),
    ('Chile piquín', 1),
    ('Especias', 1),
    ('Flan en polvo', 1),
    ('Fórmulas infantiles', 1),
    ('Gelatinas en polvo/Grenetina', 1),
    ('Harina/Harina preparada', 1),
    ('Mole', 1),
    ('Sal', 1),
    ('Salsas envasadas', 1),
    ('Sazonadores', 1),
    ('Sopas en sobre', 1),
    ('Cajeta', 1),
    ('Cátsup', 1),
    ('Mayonesa', 1),
    ('Mermelada', 1),
    ('Miel', 1),
    ('Té', 1),
    ('Vinagre', 1),
    ('Huevo', 1),
    ('Pasta', 1);

insert into
    producto (nombre, id_categoria)
values
    ('Aceitunas', 2),
    ('Champiñones enteros/rebanados', 2),
    ('Chícharos', 2),
    ('Frijoles', 2),
    ('Frutas en almíbar', 2),
    ('Sardinas', 2),
    ('Atún en agua/aceite', 2),
    ('Chiles', 2),
    ('Ensaladas', 2),
    ('Granos de elote', 2),
    ('Sopa', 2),
    ('Vegetales en conserva', 2);

insert into
    producto (nombre, id_categoria)
values
    ('Leche condensada/evaporada', 3),
    ('Yogur', 3),
    ('Leche entera/deslactosada/light', 3),
    ('Crema/media crema', 3),
    ('Leche pasteurizada/en polvo', 3),
    ('Mantequilla', 3),
    ('Margarina', 3),
    ('Queso', 3);

insert into
    producto (nombre, id_categoria)
values
    ('Papas', 4),
    ('Palomitas', 4),
    ('Frituras de maíz', 4),
    ('Cacahuates', 4),
    ('Botanas saladas', 4),
    ('Barras alimenticias', 4),
    ('Nueces y semillas', 4);

insert into
    producto (nombre, id_categoria)
values
    ('Caramelos', 5),
    ('Dulces enchilados', 5),
    ('Chocolate de mesa/en polvo', 5),
    ('Gomas de mascar', 5),
    ('Mazapán', 5),
    ('Malvaviscos', 5),
    ('Pulpa de tamarindo', 5),
    ('Pastillas de dulce', 5),
    ('Paletas de dulce', 5);

insert into
    producto (nombre, id_categoria)
values
    ('Tortillas de harina/maíz', 6),
    ('Galletas dulces/saladas', 6),
    ('Pastelillos', 6),
    ('Pan de caja/dulce/molido/tostado', 6),
    ('Pan dulce', 6);

insert into
    producto (nombre, id_categoria)
values
    ('Aguacate', 7),
    ('Ajo', 7),
    ('Cebolla', 7),
    ('Chile', 7),
    ('Cilantro/Perejil', 7),
    ('Jitomate', 7),
    ('Papas', 7),
    ('Limones', 7),
    ('Manzanas', 7),
    ('Naranjas', 7),
    ('Plátanos', 7);

insert into
    producto (nombre, id_categoria)
values
    ('Agua mineral/natural/saborizada', 8),
    ('Jarabes', 8),
    ('Jugos/Néctares', 8),
    ('Naranjadas', 8),
    (
        'Bebidas de soya/en polvo/infantiles/isotónicas',
        8
    ),
    ('Energetizantes', 8),
    ('Refrescos', 8);

insert into
    producto (nombre, id_categoria)
values
    ('Bebidas preparadas', 9),
    ('Cerveza', 9),
    ('Anís', 9),
    ('Brandy', 9),
    ('Ginebra', 9),
    ('Cordiales', 9),
    ('Mezcal', 9),
    ('Jerez', 9),
    ('Ron', 9),
    ('Tequila', 9),
    ('Sidra', 9),
    ('Whisky', 9),
    ('Vodka', 9);

insert into
    producto (nombre, id_categoria)
values
    ('Pastas listas para comer', 10),
    ('Sopas en vaso', 10),
    ('Carnes y embutidos', 10),
    ('Salchichas', 10),
    ('Mortadela', 10),
    ('Tocino', 10),
    ('Jamón', 10),
    ('Manteca', 10),
    ('Chorizo', 10),
    ('Carne de puerco/res/pollo', 10);

insert into
    producto (nombre, id_categoria)
values
    ('Suero', 11),
    ('Agua oxigenada', 11),
    ('Preservativos', 11),
    ('Alcohol', 11),
    ('Gasas', 11),
    ('Analgésicos', 11),
    ('Antigripales', 11),
    ('Antiácidos', 11);

insert into
    producto (nombre, id_categoria)
values
    ('Toallas húmedas', 12),
    ('Aceite para bebé', 12),
    ('Toallas femeninas', 12),
    ('Algodón', 12),
    ('Tinte para el cabello', 12),
    ('Biberones', 12),
    ('Talco', 12),
    ('Cepillo de dientes', 12),
    ('Shampoo/Acondicionador', 12),
    ('Cotonetes', 12),
    ('Rastrillos', 12),
    ('Crema corporal/facial', 12),
    ('Papel higiénico', 12),
    ('Crema para afeitar', 12),
    ('Pañuelos faciales/desechables', 12),
    ('Dentífricos', 12),
    ('Desodorantes en barra/en aerosol', 12),
    ('Maquillaje', 12),
    ('Enjuague bucal', 12),
    ('Lubricantes para labios', 12),
    ('Gel/Spray', 12),
    ('Loción hidratante', 12),
    ('Jabones corporales/de tocador', 12);

insert into
    producto (nombre, id_categoria)
values
    ('Suavizante de telas', 13),
    ('Ácido muriático', 13),
    ('Sosa caústica', 13),
    ('Aluminio', 13),
    ('Pilas', 13),
    ('Shampoo para ropa', 13),
    ('Servilletas', 13),
    ('Servitoallas', 13),
    ('Aromatizantes', 13),
    ('Cera para automóvil/para calzado', 13),
    ('Pastillas sanitarias', 13),
    ('Limpiadores líquidos', 13),
    ('Cerillos', 13),
    ('Cloro/Blanqueador', 13),
    ('Jabón en barra', 13),
    ('Insecticidas', 13),
    ('Fibras limpiadoras', 13),
    ('Desinfectantes', 13),
    (
        'Detergentes para trastes/para ropa',
        13
    );

insert into
    producto (nombre, id_categoria)
values
    ('Paletas', 14),
    ('Helados', 14),
    ('Verduras/Frutas congeladas', 14),
    ('Hielo', 14);

insert into
    producto (nombre, id_categoria)
values
    ('Velas/Valadoras', 15),
    ('Cepillos de plástico', 15),
    ('Vasos desechables', 15),
    ('Cinta adhesiva', 15),
    (
        'Cucharas/Tenedores/Cuchillos de plástico',
        15
    ),
    ('Escobas/Trapeadores/Mechudos', 15),
    ('Trampas para ratas', 15),
    ('Extensiones/Multicontacto', 15),
    ('Recogedor de metal/plástico', 15),
    ('Popotes', 15),
    ('Platos desechables', 15),
    ('Focos', 15),
    ('Fusibles', 15),
    ('Jergas/Franelas', 15),
    ('Matamoscas', 15),
    ('Pegamento', 15),
    ('Mecate/Cuerda', 15);

insert into
    producto (nombre, id_categoria)
values
    ('Hojas', 16),
    ('Lápices', 16),
    ('Colores', 16),
    ('Libretas', 16),
    ('Útiles escolares en general', 16);

insert into
    producto (nombre, id_categoria)
values
    ('Tarjetas telefónicas', 17),
    ('Recargas móviles', 17),
    ('Cigarrillos', 17),
    ('Tarjetas prepagadas', 17),
    ('Giftcards', 17),
    ('Copias/Impresiones', 17);

-- Insertando artículos...
insert into
    articulo (nombre, cantidad, precio, imagen, id_producto)
values
    (
        'Aceite Vegetal "Happy Belly"',
        5,
        10.5,
        "https://images-na.ssl-images-amazon.com/images/I/71jxqrLs6aL._AC_UL600_SR600,400_.jpg",
        1
    );

insert into
    articulo (nombre, cantidad, precio, imagen, id_producto)
values
    (
        'Arroz "Sello Rojo" 3kg',
        4,
        4.70,
        "https://m.media-amazon.com/images/I/51cAkfz2f-L._SX300_SY300_QL70_FMwebp_.jpg",
        3
    );