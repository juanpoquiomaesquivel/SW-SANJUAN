<?php
require_once("../shared/conexionbd.php");

if (isset($_GET['items'])) {
    $conn = ConexionBD::obtenerInstancia()->conexion;
    $sql = "select id, nombre from producto where id_categoria =  '" . $_GET['items'] . "'";
    $query = $conn->query($sql);

    while ($producto = $query->fetch(PDO::FETCH_ASSOC)) {
?>
        <option value="<?= $producto['id'] ?>"><?= $producto["nombre"] ?></option>
<?php
    }
}
?>