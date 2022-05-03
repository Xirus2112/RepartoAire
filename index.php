<?php

require_once "controladores/plantilla.controlador.php";
require_once "controladores/usuarios.controlador.php";
require_once "controladores/reparto.controlador.php";

require_once "modelos/usuarios.modelo.php";
require_once "modelos/reparto.modelo.php";

$plantilla = new ControladorPlantilla();
$plantilla -> ctrPlantilla();