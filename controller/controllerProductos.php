<?php

class ControllerProductos
{
    function listarArticulosPorFiltros($index_categoria, $index_producto)
    {
        include_once("../model/modelProductos.php");
        $mod = new ModelProductos();
        $arr_articulos = $mod->listarArticulosPorFiltros($index_categoria, $index_producto);

        if (count($arr_articulos) == 0) {
            echo "No hay artículos...";
        } else {
            include_once("../view/viewProductos.php");
            $form = new ViewProductos();
            $arr_categorias = $mod->listarFiltrosCategoria();
            $arr_productos = $mod->listarFiltrosProducto($index_categoria);
            $form->showViewProductos($arr_articulos, $arr_categorias, $arr_productos, $index_categoria, $index_producto);
        }
    }

    function listarArticulos()
    {
        include_once("../model/modelProductos.php");
        $mod = new ModelProductos();
        $arr_articulos = $mod->listarArticulos();
        $arr_categorias = $mod->listarFiltrosCategoria();
        $arr_productos = $mod->listarFiltrosProducto(0);
        include_once("../view/viewProductos.php");
        $form = new ViewProductos();
        $form->showViewProductos($arr_articulos, $arr_categorias, $arr_productos, 0, 0);
    }
}
