<?php
include_once("../shared/conexionbd.php");

class ModelProductos
{
    function listarFiltrosCategoria()
    {
        $conexion = ConexionBD::obtenerInstancia()->conexion;
        $query = $conexion->query("select * from categoria");
        $filtros_categoria = $query->fetchAll(PDO::FETCH_ASSOC);

        return $filtros_categoria;
    }

    function listarFiltrosProducto($index_categoria)
    {
        $conexion = ConexionBD::obtenerInstancia()->conexion;
        $sql = "select * from producto";

        if ($index_categoria != 0)
            $sql = $sql . " where id_categoria = " . $index_categoria;

        $query = $conexion->query($sql);
        $filtros_producto = $query->fetchAll(PDO::FETCH_ASSOC);

        //return $filtros_producto;
        return [];
    }

    function listarArticulosPorFiltros($index_categoria, $index_producto)
    {
        echo "ix-cat: " . $index_categoria . "; ix-pro: " . $index_producto . "/";
        $conn = ConexionBD::obtenerInstancia()->conexion;
        $categoria = "";
        $len = 0;

        if ($index_categoria != 0) {
            $aux_sql = "select count(nombre) from producto where id_categoria = " . $index_categoria;
            $aux_query = $conn->query($aux_sql);
            $len = $aux_query->fetch(PDO::FETCH_ASSOC);
            $categoria = " and categoria.id = ?";
        }

        $producto = ($len > 0 && $index_producto != 0) ? " and producto.id = ?" : "";
        $sql = "select articulo.id, articulo.nombre, articulo.cantidad, articulo.precio, articulo.imagen, producto.nombre as prod_nombre, categoria.nombre as cat_nombre from articulo join producto on articulo.id_producto = producto.id" . $producto . " join categoria on producto.id_categoria = categoria.id" . $categoria;
        $stmt = $conn->prepare($sql);
        $params = [];

        if ($len > 0 && $index_producto != 0)
            array_push($params, $index_producto);

        if ($index_categoria != 0)
            array_push($params, $index_categoria);

        $stmt->execute($params);
        $arr_articulos = $stmt->fetchAll(PDO::FETCH_ASSOC);

        return $arr_articulos;
    }

    function listarArticulos()
    {
        $conn = ConexionBD::obtenerInstancia()->conexion;
        $query = $conn->query("select * from articulo");
        $arr_articulos = [];

        /*while ($articulo = $query->fetch(PDO::FETCH_ASSOC)) {
            array_push($arr_articulos, $articulo);
        }*/
        $arr_articulos = $query->fetchAll(PDO::FETCH_ASSOC);

        return $arr_articulos;
    }
}
