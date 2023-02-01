<?php

class ControllerArticulos
{

    function listarArticulosPorFiltros($termino, $index_categoria, $index_producto)
    {
        include_once("../model/modelArticulos.php");
        $mod = new ModelArticulos();
        $arr_articulos = $mod->listarArticulosPorFiltros($termino, $index_categoria, $index_producto);

        if (count($arr_articulos) == 0) {
            echo "No hay artículos...";
        } else {
            include_once("../view/viewArticulos.php");
            $form = new ViewArticulos();
            $arr_categorias = $mod->listarFiltrosCategoria();
            $arr_productos = $mod->listarFiltrosProducto($index_categoria);
            $form->showViewArticulos($arr_articulos, $arr_categorias, $arr_productos, $index_categoria, $index_producto);
        }
    }

    function listarArticulos()
    {
        include_once("../model/modelArticulos.php");
        $mod = new ModelArticulos();
        $arr_articulos = $mod->listarArticulos();
        $arr_categorias = $mod->listarFiltrosCategoria();
        $arr_productos = [];
        include_once("../view/viewArticulos.php");
        $form = new ViewArticulos();
        $form->showViewArticulos($arr_articulos, $arr_categorias, $arr_productos, 0, 0);
    }
}
