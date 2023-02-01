<?php
include_once("controllerArticulos.php");

if (isset($_POST["buscar"])) {
    echo "BUSCARS...";
    $termino = $_POST["termino_clave"];
    $index_categoria = $_POST["indexB_categoria"];
    $index_producto = $_POST["indexB_producto"];

    if (!preg_match("/^\s*$/", $termino)) {
        include_once("controllerArticulos.php");
        $con = new ControllerArticulos();
        $con->listarArticulosPorFiltros($termino, $index_categoria, $index_producto);
    }
} else if (isset($_POST["filtrar"])) {
    echo "FILTROS...";
    $index_categoria = $_POST["index_categoria"];
    $index_producto = $_POST["index_producto"];
    include_once("controllerArticulos.php");
    $con = new ControllerArticulos();
    $con->listarArticulosPorFiltros(null, $index_categoria, $index_producto);
} else if (isset($_GET["items"])) {
?>
    <option value="0">Todos</option>
    <?php
    require_once("../shared/conexionbd.php");

    if (isset($_GET['items'])) {
        include_once("../model/modelArticulos.php");
        $mod = new ModelArticulos();
        $arr_productos = $mod->listarFiltrosProducto($_GET['items']);

        foreach ($arr_productos as $producto) {
    ?>
            <option value="<?= $producto['id'] ?>"><?= $producto["nombre"] ?></option>
<?php
        }
    }
} else {
    include_once("controllerArticulos.php");
    $con = new ControllerArticulos();
    $con->listarArticulos();
}
