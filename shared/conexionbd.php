<?php
class ConexionBD
{
    static private $instancia = null;
    public $conexion = null;

    private function __construct()
    {
        $connection = "mysql:host=" . "localhost" . ";dbname=" . "swsanjuan" . ";charset=" . "utf8mb4";

        $options = [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_EMULATE_PREPARES => false
        ];
        $pdo = new PDO($connection, "root", "admin", $options);
        $this->conexion = $pdo;
    }

    public static function obtenerInstancia()
    {
        if (self::$instancia == null)
            self::$instancia = new conexionBD();

        return (self::$instancia);
    }
}
