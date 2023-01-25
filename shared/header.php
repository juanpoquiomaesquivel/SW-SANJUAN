<?php

class HeaderSanjuan
{
    static private $instancia = null;

    private function __construct()
    {
?>
        <div id="header-sanjuan">
            <ul>
                <li><a href=""><img class="logo" src="../assets/img/logo.jpg"></a></li>
            </ul>

            <ul>
                <li><a class="header_dir" href="">Productos</a></li>
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