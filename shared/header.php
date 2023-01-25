<?php

class HeaderSanjuan
{
    static private $instancia = null;

    private function __construct()
    {
?>
        <div id="header-sanjuan">
            <ul>
                <li><a href="../index.php"><img id="logo" src="../assets/img/logo.jpg"></a></li>
            </ul>

            <ul>
                <li><a class="header_dir" href="../view/viewProductos.php">Productos</a></li>
                <li>X</li>
                <li>Y</li>
                <li>Z</li>
            </ul>
        </div>

<?php
    }

    public static function obtenerInstancia()
    {
        if (self::$instancia == null)
            self::$instancia = new HeaderSanjuan();

        return self::$instancia;
    }
}
?>