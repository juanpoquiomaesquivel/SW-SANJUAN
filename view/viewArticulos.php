<?php
include_once("../shared/header.php");
include_once("../shared/footer.php");

class ViewArticulos
{
    public function showViewArticulos($arr_articulos, $arr_categorias, $arr_productos, $index_categoria, $index_producto)
    {
?>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" href="../assets/header-estilo.css">
            <link rel="stylesheet" href="../assets/footer-estilo.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
            <title>Productos - Panadería "San Juan"</title>
        </head>

        <body>
            <?php HeaderSanjuan::obtenerInstancia(); ?>

            <div class="buscador">
                <form method="POST" action="../controller/getArticulos.php">
                    <input type="text" name="termino_clave" autocomplete="off">
                    <input type="text" name="indexB_categoria" value="<?= $index_categoria ?>" hidden="true">
                    <input type="text" name="indexB_producto" value="<?= $index_producto ?>" hidden="true">
                    <input type="submit" value="Buscar" name="buscar">
                </form>
            </div>
            <div class="contenedor_body">
                <nav class="barra_filtros">
                    <form class="filtros" method="POST" action="../controller/getArticulos.php">
                        <h2>Filtros</h2>

                        <br>
                        <h3>Categoría</h3>
                        <select name="index_categoria" id="index_categoria" class="input_select">
                            <option value="0">Todos</option>
                            <?php
                            foreach ($arr_categorias as $categoria) {
                            ?>
                                <option value="<?php echo $categoria['id'] ?>" <?php if ($categoria["id"] == $index_categoria) echo 'selected="selected"'; ?>>
                                    <?php echo $categoria['nombre'] ?>
                                </option>
                            <?php
                            }
                            ?>
                        </select>

                        <br>
                        <h3>Producto</h3>
                        <select name="index_producto" id="index_producto" class="input_select">
                            <option value="0">Todos</option>
                            <?php
                            foreach ($arr_productos as $producto) {
                            ?>
                                <option value="<?= $producto['id'] ?>" <?php if ($producto["id"] == $index_producto) echo 'selected="selected"'; ?>>
                                    <?= $producto['nombre'] ?>
                                </option>
                            <?php
                            }
                            ?>
                        </select>
                        <br>

                        <input type="submit" value="Aplicar filtros" name="filtrar">
                    </form>
                </nav>
                <div class="articulos">
                    <h1>Artículos</h1>
                    <section class="contenedor_articulos">
                        <?php for ($i = 0; $i < count($arr_articulos); $i++) {
                        ?>
                            <div class="producto_individual">
                                <form action="../controller/getCarrito.php" method="POST">
                                    <div><img src="<?php echo $arr_articulos[$i]["imagen"]; ?>" alt=""></div>
                                    <div>ID: <input type="text" name="producto_id" value="<?php echo $arr_articulos[$i]["id"]; ?>" readonly></div>
                                    <h2><?php echo $arr_articulos[$i]["nombre"]; ?></h2>
                                    <div>
                                        <span>S/. <?php echo $arr_articulos[$i]["precio"]; ?></span>
                                        <span> - Estado: <?php echo $arr_articulos[$i]["cantidad"] > 0 ? "disponible" : "agotado"; ?></span>
                                    </div>

                                    <input type="number" min="1" name="producto_cantidad" value="1">
                                    <input type="hidden" name="producto_nombre" value="<?php echo $arr_articulos[$i]["nombre"]; ?>">
                                    <input type="hidden" name="producto_precio" value="<?php echo $arr_articulos[$i]["precio"]; ?>">
                                    <input type="hidden" name="producto_image" value="<?php echo $arr_articulos[$i]["imagen"]; ?>">

                                    <input type="submit" value="comprar" name="agregar_carrito">
                                </form>
                            </div>
                        <?php
                        } ?>
                    </section>
                </div>

            </div>

            <script type="text/javascript">
                $("#index_categoria").change(function() {
                    var x = $("#index_categoria").val();
                    xmlhttp = new XMLHttpRequest();
                    xmlhttp.open("GET", "../controller/getArticulos.php?items=" + x, false);
                    xmlhttp.send(null);
                    $("#index_producto").html(xmlhttp.responseText);
                });
            </script>

            <?php FooterSanjuan::obtenerInstancia(); ?>
        </body>

        </html>

<?php
    }
}
?>