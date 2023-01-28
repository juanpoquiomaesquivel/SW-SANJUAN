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
        if ($index_categoria != 0) {
            $conn = ConexionBD::obtenerInstancia()->conexion;
            $sql = "select * from producto where id_categoria = " . $index_categoria;
            $query = $conn->query($sql);
            $filtros_producto = $query->fetchAll(PDO::FETCH_ASSOC);

            return $filtros_producto;
        } else
            return [];
    }

    function listarArticulosPorFiltros($index_categoria, $index_producto)
    {
        echo "ix-cat: " . $index_categoria . "; ix-pro: " . $index_producto . "/";
        $conn = ConexionBD::obtenerInstancia()->conexion;
        $categoria = ($index_categoria != 0) ? " and categoria.id = ?" : "";
        $producto = ($index_producto != 0) ? " and producto.id = ?" : "";
        $sql = "select articulo.id, articulo.nombre, articulo.cantidad, articulo.precio, articulo.imagen, producto.nombre as prod_nombre, categoria.nombre as cat_nombre from articulo join producto on articulo.id_producto = producto.id" . $producto . " join categoria on producto.id_categoria = categoria.id" . $categoria;
        $stmt = $conn->prepare($sql);
        $params = [];

        if ($index_producto != 0)
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
        $arr_articulos = $query->fetchAll(PDO::FETCH_ASSOC);

        return $arr_articulos;
    }
}
