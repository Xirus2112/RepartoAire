<div class="content-wrapper">

    <section class="content-header">

        <h1>

            Informe de Repartos

        </h1>

        <ol class="breadcrumb">

            <li><a href="inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>

            <li class="active">Administrar repartos</li>

        </ol>

    </section>

    <section class="content">

        <div class="box">

            <div class="box-header with-border">

                <button class="btn btn-primary" data-toggle="modal" data-target="#modalAgregarReparto">

                    Agregar Reparto

                </button>

            </div>

            <div class="box-body">

                <table class="table table-bordered table-striped dt-responsive tablas" width="100%">

                    <thead>

                        <tr>

                          <th style="width:10px">#</th>
                          <th>Fecha Emisión</th>
                          <th>Fecha Impresión</th>
                          <th>Proceso</th>
                          <th>UniRutIti</th>
                          <th>Cant</th>
                          <th>Municipio</th>
                          <th>Barrio</th>
                          <th>Estado</th>
                          <th>Fecha Programada</th>
                          <th>Entregadas</th>
                          <th>Pendiente</th>
                          <th>Tipo Sector</th>
                          <th>Repartidor</th>
                          <th>Hora Inicio</th>
                          <th>Hora Fin</th>
                          <th>Supervisor</th>
                          <th>Celular</th>
                          <th>Observación</th>
                          <th>Acción</th>

                        </tr>

                    </thead>

                    <tbody>

                        <?php

          $item = null;
          $valor = null;

          $categorias = ControladorReparto::ctrMostrarReparto($item, $valor);

          foreach ($categorias as $key => $value) {
            $unirutiti = $value["UNICOM"].$value["RUTA"].$value["ITINERARIO"];
            echo ' <tr>

                    <td>'.($key+1).'</td>

                    <td class="text-uppercase">'.$value["FECHA_EMISION"].'</td>
                    <td class="">'.$value["FECHA_IMPRESION"].'</td>
                    <td class="">'.$value["PROCESO"].'</td>
                    <td class="">'.$unirutiti.'</td>
                    <td class="">'.$value["CANTIDAD"].'</td>
                    <td class="">'.$value["MUNICIPIO"].'</td>
                    <td class="">'.$value["BARRIOS"].'</td>
                    <td class="">'.$value["ESTADO"].'</td>
                    <td class="">'.$value["FECHA_REPARTO"].'</td>
                    <td class="">'.$value["CANT_ENTREGADAS"].'</td>
                    <td class="">'.$value["CANT_PENDIENTES"].'</td>
                    <td class="">'.$value["TIPO_SECTOR"].'</td>
                    <td class="">'.$value["REPARTIDOR"].'</td>
                    <td class="">'.$value["HORA_RECIBE"].'</td>
                    <td class="">'.$value["HORA_FINALIZA"].'</td>
                    <td class="">'.$value["SUPERVISOR"].'</td>
                    <td class="">'.$value["OBSERVACIONES"].'</td>
                    <td class="">'.$value["CELULAR_SUPERVISOR"].'</td>

                    <td>

                      <div class="btn-group">
                          
                        <button class="btn btn-warning btnEditarReparto" idReparto="'.$value["ID_REPARTO"].'" data-toggle="modal" data-target="#modalEditarReparto"><i class="fa fa-pencil"></i></button>

                        <button class="btn btn-danger btnEliminarReparto" idReparto="'.$value["ID_REPARTO"].'"><i class="fa fa-times"></i></button>

                      </div>  

                    </td>

                  </tr>';
          }

        ?>

                    </tbody>
                    <tfoot>
                        <tr>

                            <th style="width:10px">#</th>
                            <th>F. Emisión</th>
                            <th>F. Impresión</th>
                            <th>Proceso</th>
                            <th>UniRutIti</th>
                            <th>Cant</th>
                            <th>Municipio</th>
                            <th>Barrio</th>
                            <th>Estado</th>
                            <th>F. Program</th>
                            <th>Entregadas</th>
                            <th>Pendiente</th>
                            <th>T. Sector</th>
                            <th>Repartidor</th>
                            <th>H. Ini</th>
                            <th>H. Fin</th>
                            <th>Supervisor</th>
                            <th>Celular</th>

                        </tr>
                    </tfoot>
                </table>

            </div>

        </div>

    </section>

</div>

<!--=====================================
MODAL AGREGAR REPARTO
======================================-->

<div id="modalAgregarReparto" class="modal fade" role="dialog">

    <div class="modal-dialog modal-lg">

        <div class="modal-content">

            <form role="form" method="post">

                <!--=====================================
                CABEZA DEL MODAL
                ======================================-->

                <div class="modal-header" style="background:#3c8dbc; color:white">

                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                    <h4 class="modal-title">Agregar Reparto</h4>

                </div>

                <!--=====================================
                CUERPO DEL MODAL
                ======================================-->

                <div class="modal-body">

                    <div class="box-body">

                        <!-- PRIMERA FILA-->

                        <div class="row">
                            <div class="col-xs-4">
                                <div class="from-group">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>

                                        <input type="text" class="form-control" name="nuevaReparto" placeholder="Prueba" required>
                                    </div>
                                </div>
                            </div>

                            <!-- <div class="col-xs-4">
                                <div class="from-group">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>

                                        <input type="text" class="form-control" name="nuevaReparto" placeholder="Prueba" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="from-group">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>

                                        <input type="text" class="form-control" name="nuevaReparto" placeholder="Prueba" required>
                                    </div>
                                </div>
                            </div> -->
                        </div>
                        <br>
                    <!-- SEGUNDA FILA  -->
                        <!-- <div class="row">
                            <div class="col-xs-4">
                                <div class="from-group">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>

                                        <input type="text" class="form-control" name="nuevaReparto" placeholder="Prueba" required>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xs-4">
                                <div class="from-group">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>

                                        <input type="text" class="form-control" name="nuevaReparto" placeholder="Prueba" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="from-group">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>

                                        <input type="text" class="form-control" name="nuevaReparto" placeholder="Prueba" required>
                                    </div>
                                </div>
                            </div>
                        </div> -->

                    </div>

                </div>

                <!--=====================================
                PIE DEL MODAL
                ======================================-->

                <div class="modal-footer">

                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

                    <button type="submit" class="btn btn-primary">Guardar categoría</button>

                </div>

                <?php

                $crearCategoria = new ControladorCategorias();
                $crearCategoria -> ctrCrearCategoria();

            ?>

            </form>

        </div>

    </div>

</div>

<!--=====================================
MODAL EDITAR REPARTO
======================================-->

<div id="modalEditarReparto" class="modal fade" role="dialog">

    <div class="modal-dialog">

        <div class="modal-content">

            <form role="form" method="post">

                <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

                <div class="modal-header" style="background:#3c8dbc; color:white">

                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                    <h4 class="modal-title">Editar categoría</h4>

                </div>

                <!--=====================================
        CUERPO DEL MODAL
        ======================================-->

                <div class="modal-body">

                    <div class="box-body">

                        <!-- ENTRADA PARA EL NOMBRE -->

                        <div class="form-group">

                            <div class="input-group">

                                <span class="input-group-addon"><i class="fa fa-th"></i></span>

                                <input type="text" class="form-control input-lg" name="editarReparto" id="editarReparto"
                                    required>

                                <input type="hidden" name="idReparto" id="idReparto" required>

                            </div>

                        </div>

                    </div>

                </div>

                <!--=====================================
        PIE DEL MODAL
        ======================================-->

                <div class="modal-footer">

                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

                    <button type="submit" class="btn btn-primary">Guardar cambios</button>

                </div>

                <?php

          $editarCategoria = new ControladorCategorias();
          $editarCategoria -> ctrEditarCategoria();

        ?>

            </form>

        </div>

    </div>

</div>

<?php

  $borrarCategoria = new ControladorCategorias();
  $borrarCategoria -> ctrBorrarCategoria();

?>