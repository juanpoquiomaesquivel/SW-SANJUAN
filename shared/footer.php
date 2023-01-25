<?php

class FooterSanjuan
{
    static private $instancia = null;

    private function __construct()
    {
?>
        <footer>
            <span>Juan Poquioma Esquivel © <script>
                    document.write(new Date().getFullYear());
                </script> Todos los derechos reservados</span>
        </footer>

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