@extends('plantilla')
@section('contenido')
  <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="row">
      <ol class="breadcrumb">
        <li><a href="/"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
        <li><a href="/vehiculo">vehiculo</a></li>
        <li class="active">Modificar vehiculo</li>
      </ol>
    </div><!--/.row-->

    <div class="row">
      <div class="col-lg-12">
        <h1 class="page-header">Administrar vehiculos</h1>
      </div>
    </div><!--/.row-->

    <div class="panel-body">
      <div class="row">
        <div class="col-lg-12">
          <div class="panel panel-default">
            <div class="panel-heading">Modificar / Eliminar</div>
            <div class="panel-body">
              <table data-toggle="table" data-url="json3"  data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-pagination="true" data-sort-name="name" data-sort-order="desc">
                  <thead>
                  <tr>
                      <th data-field="id" data-radio="true" >id</th>
                      <th data-field="email" data-sortable="true" >PLACA</th>
                      <th data-field="cod_usuario" data-sortable="true">MARCA</th>
                      <th data-field="tipo_usuario"  data-sortable="true">TIPO </th>
                  </tr>
                  </thead>

              </table>
              <button type="button" class="btn btn-warning" name="button">MODIFICAR</button>
              <button type="button" class="btn btn-danger" name="button">ELIMINAR</button>
            </div>
          </div>
        </div>
      </div><!--/.row-->

      <script>
          $(function () {
              $('#hover, #striped, #condensed').click(function () {
                  var classes = 'table';

                  if ($('#hover').prop('checked')) {
                      classes += ' table-hover';
                  }
                  if ($('#condensed').prop('checked')) {
                      classes += ' table-condensed';
                  }
                  $('#table-style').bootstrapTable('destroy')
                      .bootstrapTable({
                          classes: classes,
                          striped: $('#striped').prop('checked')
                      });
              });
          });

          function rowStyle(row, index) {
              var classes = ['active', 'success', 'info', 'warning', 'danger'];

              if (index % 2 === 0 && index / 2 < classes.length) {
                  return {
                      classes: classes[index / 2]
                  };
              }
              return {};
          }
      </script>


    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/chart.min.js"></script>
    <script src="js/chart-data.js"></script>
    <script src="js/easypiechart.js"></script>
    <script src="js/easypiechart-data.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <script src="js/bootstrap-table.js"></script>

    <script>
      $('#calendar').datepicker({
      });

      !function ($) {
          $(document).on("click","ul.nav li.parent > a > span.icon", function(){
              $(this).find('em:first').toggleClass("glyphicon-minus");
          });
          $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
      }(window.jQuery);

      $(window).on('resize', function () {
        if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
      })
      $(window).on('resize', function () {
        if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
      })
    </script>
    <div class="">

    </div>
  </div>	<!--/.main-->

@stop
