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
} else {
    include_once("controllerProductos.php");
    $con = new ControllerProductos();
    $con->listarArticulos();
}
