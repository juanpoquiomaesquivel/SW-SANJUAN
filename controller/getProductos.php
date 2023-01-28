<?php
include_once("controllerProductos.php");

if (isset($_POST["buscar"])) {
    $term = $_POST["termino_clave"];

    if (!preg_match("/^\s*$/", $term)) {
        $con = new ControllerProductos();
        $con->listarArticulos($term, null, null);
    }
} else if (isset($_POST["filtrar"])) {
    echo "FILTROS...";
    $index_categoria = $_POST["index_categoria"];
    $index_producto = $_POST["index_producto"];
    include_once("controllerProductos.php");
    $con = new ControllerProductos();
    $con->listarArticulosPorFiltros($index_categoria, $index_producto);
} else if (isset($_GET["items"])) {
?>
    <option value="0" disabled selected>Todos</option>
    <?php
    require_once("../shared/conexionbd.php");

    if (isset($_GET['items'])) {
        include_once("../model/modelProductos.php");
        $mod = new ModelProductos();
        $arr_productos = $mod->listarFiltrosProducto($_GET['items']);

        foreach ($arr_productos as $producto) {
    ?>
            <option value="<?= $producto['id'] ?>"><?= $producto["nombre"] ?></option>
<?php
        }
    }
} else {
    include_once("controllerProductos.php");
    $con = new ControllerProductos();
    $con->listarArticulos();
}
