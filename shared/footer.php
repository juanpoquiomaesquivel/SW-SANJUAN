<?php

class FooterSanjuan
{
    static private $instancia = null;

    private function __construct()
    {
?>
        <div id="header-sanjuan">
            <ul>
                <li>A</li>
            </ul>

            <ul>
                <li>B</li>
                <li>C</li>
                <li>D</li>
                <li>E</li>
            </ul>
        </div>

<?php
    }

    public static function obtenerInstancia()
    {
        if (self::$instancia == null)
            self::$instancia = new FooterSanjuan();

        return self::$instancia;
    }
}
?>