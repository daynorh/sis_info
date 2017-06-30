@extends('plantilla')
@section('contenido')
  <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="row">
      <ol class="breadcrumb">
        <li><a href="/"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
        <li class="active">Socios</li>
      </ol>
    </div><!--/.row-->

    <div class="row">
      <div class="col-lg-12">
        <h1 class="page-header">Registro de socios</h1>
      </div>
    </div><!--/.row-->

    <div class="panel-body">
        <form role="form">
          <div class="col-lg-12">
          <div class="form-group">
            <label>Nombres</label>
            <input class="form-control" placeholder="Ingrese nombre ...">
          </div>
          <div class="form-group">
            <label>Apellido Paterno</label>
            <input class="form-control" placeholder="Ingrese Apellido ...">
          </div>
          <div class="form-group">
            <label>Apellido Materno</label>
            <input class="form-control" placeholder="Ingrese Materno ...">
          </div>
          <div class="form-group">
            <label>Apellido Materno</label>
            <input class="form-control" placeholder="Ingrese Materno ...">
          </div>

          <div class="form-group">
            <label>Cargo de socio</label>
            <select class="form-control">
              <option >Seleccione</option>
              <option value="Regimen interno">Regimen interno</option>
              <option value="Secretario de hacienda">Secretario de hacienda</option>
              <option value="Secretario de conflictos">Secretario de conflictos</option>
              <option value="Usuario comun">Usuario comun</option>
            </select>
          </div>
          <div class="form-group">
            <label>Tipo de socio</label>
            <select class="form-control">
              <option >Seleccione</option>
              <option value="Propietario">Propietario</option>
              <option value="Asalariado">Asalariado</option>
            </select>
          </div>
          <div class="form-group">
            <label>Linea</label>
            <select class="form-control">
              <option >Seleccione</option>
              @foreach($lineas as $linea):
                <option value="{{$linea->id}}">{{$linea->nro_linea}}</option>
              @endforeach
            </select>
          </div>

        </br>
        </br>

          <button type="submit" class="btn btn-primary">Registrar</button>




    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/chart.min.js"></script>
    <script src="js/chart-data.js"></script>
    <script src="js/easypiechart.js"></script>
    <script src="js/easypiechart-data.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
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
