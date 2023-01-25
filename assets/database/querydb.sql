drop database if exists swsanjuan;

create database swsanjuan;

-- https://abarrotero.com/2019/04/09/productos-debe-tener-tienda-de-abarrotes/
use swsanjuan;

create table categoria (
    id int not null auto_increment,
    nombre varchar(100) default null,
    imagen varchar(500) default null,
    primary key(id)
) Engine = InnoDB;

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

create table producto (
    id int not null auto_increment,
    nombre varchar(100) default null,
    precio decimal(5, 2) default 0,
    cantidad int default 0,
    imagen varchar(500) default "https://saboryestilo.com.mx/wp-content/uploads/2019/03/que-alimentos-aportan-mas-proteinas-1-1200x720.jpg",
    primary key(id),
    id_categoria int,
    foreign key(id_categoria) references categoria(id) on delete no action
) Engine = InnoDB;

insert into
    producto (nombre, precio, cantidad, id_categoria)
values
    ('Aceites comestibles', 0, 0, 1),
    ('Aderezos', 0, 0, 1),
    ('Arroz', 0, 0, 1),
    ('Consomé', 0, 0, 1),
    ('Crema de cacahuate', 0, 0, 1),
    ('Crema para café', 0, 0, 1),
    ('Puré de tomate', 0, 0, 1),
    ('Alimento para bebé', 0, 0, 1),
    ('Alimento para mascotas', 0, 0, 1),
    ('Atole', 0, 0, 1),
    ('Avena', 0, 0, 1),
    ('Azúcar', 0, 0, 1),
    ('Café', 0, 0, 1),
    ('Cereales', 0, 0, 1),
    ('Chile piquín', 0, 0, 1),
    ('Especias', 0, 0, 1),
    ('Flan en polvo', 0, 0, 1),
    ('Fórmulas infantiles', 0, 0, 1),
    ('Gelatinas en polvo/Grenetina', 0, 0, 1),
    ('Harina/Harina preparada', 0, 0, 1),
    ('Mole', 0, 0, 1),
    ('Sal', 0, 0, 1),
    ('Salsas envasadas', 0, 0, 1),
    ('Sazonadores', 0, 0, 1),
    ('Sopas en sobre', 0, 0, 1),
    ('Cajeta', 0, 0, 1),
    ('Cátsup', 0, 0, 1),
    ('Mayonesa', 0, 0, 1),
    ('Mermelada', 0, 0, 1),
    ('Miel', 0, 0, 1),
    ('Té', 0, 0, 1),
    ('Vinagre', 0, 0, 1),
    ('Huevo', 0, 0, 1),
    ('Pasta', 0, 0, 1);

insert into
    producto (nombre, precio, cantidad, id_categoria)
values
    ('Aceitunas', 0, 0, 2),
    ('Champiñones enteros/rebanados', 0, 0, 2),
    ('Chícharos', 0, 0, 2),
    ('Frijoles', 0, 0, 2),
    ('Frutas en almíbar', 0, 0, 2),
    ('Sardinas', 0, 0, 2),
    ('Atún en agua/aceite', 0, 0, 2),
    ('Chiles', 0, 0, 2),
    ('Ensaladas', 0, 0, 2),
    ('Granos de elote', 0, 0, 2),
    ('Sopa', 0, 0, 2),
    ('Vegetales en conserva', 0, 0, 2);

insert into
    productos (nombre, precio, cantidad, id_categoria)
values
    ('Leche condensada/evaporada', 0, 0, 3),
    ('Yogur', 0, 0, 3),
    ('Leche entera/deslactosada/light', 0, 0, 3),
    ('Crema/media crema', 0, 0, 3),
    ('Leche pasteurizada/en polvo', 0, 0, 3),
    ('Mantequilla', 0, 0, 3),
    ('Margarina', 0, 0, 3),
    ('Queso', 0, 0, 3);

insert into
    productos (nombre, precio, cantidad, id_categoria)
values
    ('Papas', 0, 0, 4),
    ('Palomitas', 0, 0, 4),
    ('Frituras de maíz', 0, 0, 4),
    ('Cacahuates', 0, 0, 4),
    ('Botanas saladas', 0, 0, 4),
    ('Barras alimenticias', 0, 0, 4),
    ('Nueces y semillas', 0, 0, 4);

insert into
    productos (nombre, precio, cantidad, id_categoria)
values
    ('Caramelos', 0, 0, 5),
    ('Dulces enchilados', 0, 0, 5),
    ('Chocolate de mesa/en polvo', 0, 0, 5),
    ('Gomas de mascar', 0, 0, 5),
    ('Mazapán', 0, 0, 5),
    ('Malvaviscos', 0, 0, 5),
    ('Pulpa de tamarindo', 0, 0, 5),
    ('Pastillas de dulce', 0, 0, 5),
    ('Paletas de dulce', 0, 0, 5);

insert into
    productos (nombre, precio, cantidad, id_categoria)
values
    ('Tortillas de harina/maíz', 0, 0, 6),
    ('Galletas dulces/saladas', 0, 0, 6),
    ('Pastelillos', 0, 0, 6),
    ('Pan de caja/dulce/molido/tostado', 0, 0, 6),
    ('Pan dulce', 0, 0, 6);

insert into
    productos (nombre, precio, cantidad, id_categoria)
values
    ('Aguacate', 0, 0, 7),
    ('Ajo', 0, 0, 7),
    ('Cebolla', 0, 0, 7),
    ('Chile', 0, 0, 7),
    ('Cilantro/Perejil', 0, 0, 7),
    ('Jitomate', 0, 0, 7),
    ('Papas', 0, 0, 7),
    ('Limones', 0, 0, 7),
    ('Manzanas', 0, 0, 7),
    ('Naranjas', 0, 0, 7),
    ('Plátanos', 0, 0, 7);

insert into
    productos (nombre, precio, cantidad, id_categoria)
values
    ('Agua mineral/natural/saborizada', 0, 0, 8),
    ('Jarabes', 0, 0, 8),
    ('Jugos/Néctares', 0, 0, 8),
    ('Naranjadas', 0, 0, 8),
    (
        'Bebidas de soya/en polvo/infantiles/isotónicas',
        0,
        0,
        8
    ),
    ('Energetizantes', 0, 0, 8),
    ('Refrescos', 0, 0, 8);

insert into
    productos (nombre, precio, cantidad, id_categoria)
values
    ('Bebidas preparadas', 0, 0, 9),
    ('Cerveza', 0, 0, 9),
    ('Anís', 0, 0, 9),
    ('Brandy', 0, 0, 9),
    ('Ginebra', 0, 0, 9),
    ('Cordiales', 0, 0, 9),
    ('Mezcal', 0, 0, 9),
    ('Jerez', 0, 0, 9),
    ('Ron', 0, 0, 9),
    ('Tequila', 0, 0, 9),
    ('Sidra', 0, 0, 9),
    ('Whisky', 0, 0, 9),
    ('Vodka', 0, 0, 9);

insert into
    productos (nombre, precio, cantidad, id_categoria)
values
    ('Pastas listas para comer', 0, 0, 10),
    ('Sopas en vaso', 0, 0, 10),
    ('Carnes y embutidos', 0, 0, 10),
    ('Salchichas', 0, 0, 10),
    ('Mortadela', 0, 0, 10),
    ('Tocino', 0, 0, 10),
    ('Jamón', 0, 0, 10),
    ('Manteca', 0, 0, 10),
    ('Chorizo', 0, 0, 10),
    ('Carne de puerco/res/pollo', 0, 0, 10);

insert into
    productos (nombre, precio, cantidad, id_categoria)
values
    ('Suero', 0, 0, 11),
    ('Agua oxigenada', 0, 0, 11),
    ('Preservativos', 0, 0, 11),
    ('Alcohol', 0, 0, 11),
    ('Gasas', 0, 0, 11),
    ('Analgésicos', 0, 0, 11),
    ('Antigripales', 0, 0, 11),
    ('Antiácidos', 0, 0, 11);

insert into
    productos (nombre, precio, cantidad, id_categoria)
values
    ('Toallas húmedas', 0, 0, 12),
    ('Aceite para bebé', 0, 0, 12),
    ('Toallas femeninas', 0, 0, 12),
    ('Algodón', 0, 0, 12),
    ('Tinte para el cabello', 0, 0, 12),
    ('Biberones', 0, 0, 12),
    ('Talco', 0, 0, 12),
    ('Cepillo de dientes', 0, 0, 12),
    ('Shampoo/Acondicionador', 0, 0, 12),
    ('Cotonetes', 0, 0, 12),
    ('Rastrillos', 0, 0, 12),
    ('Crema corporal/facial', 0, 0, 12),
    ('Papel higiénico', 0, 0, 12),
    ('Crema para afeitar', 0, 0, 12),
    ('Pañuelos faciales/desechables', 0, 0, 12),
    ('Dentífricos', 0, 0, 12),
    ('Desodorantes en barra/en aerosol', 0, 0, 12),
    ('Maquillaje', 0, 0, 12),
    ('Enjuague bucal', 0, 0, 12),
    ('Lubricantes para labios', 0, 0, 12),
    ('Gel/Spray', 0, 0, 12),
    ('Loción hidratante', 0, 0, 12),
    ('Jabones corporales/de tocador', 0, 0, 12);

insert into
    productos (nombre, precio, cantidad, id_categoria)
values
    ('Suavizante de telas', 0, 0, 13),
    ('Ácido muriático', 0, 0, 13),
    ('Sosa caústica', 0, 0, 13),
    ('Aluminio', 0, 0, 13),
    ('Pilas', 0, 0, 13),
    ('Shampoo para ropa', 0, 0, 13),
    ('Servilletas', 0, 0, 13),
    ('Servitoallas', 0, 0, 13),
    ('Aromatizantes', 0, 0, 13),
    ('Cera para automóvil/para calzado', 0, 0, 13),
    ('Pastillas sanitarias', 0, 0, 13),
    ('Limpiadores líquidos', 0, 0, 13),
    ('Cerillos', 0, 0, 13),
    ('Cloro/Blanqueador', 0, 0, 13),
    ('Jabón en barra', 0, 0, 13),
    ('Insecticidas', 0, 0, 13),
    ('Fibras limpiadoras', 0, 0, 13),
    ('Desinfectantes', 0, 0, 13),
    (
        'Detergentes para trastes/para ropa',
        0,
        0,
        13
    );

insert into
    productos (nombre, precio, cantidad, id_categoria)
values
    ('Paletas', 0, 0, 14),
    ('Helados', 0, 0, 14),
    ('Verduras/Frutas congeladas', 0, 0, 14),
    ('Hielo', 0, 0, 14);

insert into
    productos (nombre, precio, cantidad, id_categoria)
values
    ('Velas/Valadoras', 0, 0, 15),
    ('Cepillos de plástico', 0, 0, 15),
    ('Vasos desechables', 0, 0, 15),
    ('Cinta adhesiva', 0, 0, 15),
    (
        'Cucharas/Tenedores/Cuchillos de plástico',
        0,
        0,
        15
    ),
    ('Escobas/Trapeadores/Mechudos', 0, 0, 15),
    ('Trampas para ratas', 0, 0, 15),
    ('Extensiones/Multicontacto', 0, 0, 15),
    ('Recogedor de metal/plástico', 0, 0, 15),
    ('Popotes', 0, 0, 15),
    ('Platos desechables', 0, 0, 15),
    ('Focos', 0, 0, 15),
    ('Fusibles', 0, 0, 15),
    ('Jergas/Franelas', 0, 0, 15),
    ('Matamoscas', 0, 0, 15),
    ('Pegamento', 0, 0, 15),
    ('Mecate/Cuerda', 0, 0, 15);

insert into
    productos (nombre, precio, cantidad, id_categoria)
values
    ('Hojas', 0, 0, 16),
    ('Lápices', 0, 0, 16),
    ('Colores', 0, 0, 16),
    ('Libretas', 0, 0, 16),
    ('Útiles escolares en general', 0, 0, 16);

insert into
    productos (nombre, precio, cantidad, id_categoria)
values
    ('Tarjetas telefónicas', 0, 0, 17),
    ('Recargas móviles', 0, 0, 17),
    ('Cigarrillos', 0, 0, 17),
    ('Tarjetas prepagadas', 0, 0, 17),
    ('Giftcards', 0, 0, 17),
    ('Copias/Impresiones', 0, 0, 17);