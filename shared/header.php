<?php

class HeaderSanjuan
{
    static private $instancia = null;

    private function __construct()
    {
?>
        <div id="header-sanjuan">
            <ul>
                <li><a href="../index.php"><img id="logo" src="../assets/img/logo.png"></a></li>
            </ul>

            <ul>
                <li><a class="header-dir" href="../controller/getArticulos.php">Productos</a></li>
                <li><a class="header-dir" href="">X</a></li>
                <li><a class="header-dir" href="">Y</a></li>
                <li><a class="header-dir" href="">Z</a></li>
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