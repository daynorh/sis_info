@extends('plantilla')
@section('contenido')
  <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="row">
      <ol class="breadcrumb">
        <li><a href="/"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
        <li class="active">Vehiculo</li>
      </ol>
    </div><!--/.row-->

    <div class="row">
      <div class="col-lg-12">
        <h1 class="page-header">Registro de vehiculos</h1>
      </div>
    </div><!--/.row-->

    <div class="panel-body">
        <form role="form">
          <div class="col-lg-12">
          <div class="form-group">
            <label>Placa</label>
            <input class="form-control" placeholder="Ingrese placa ...">
          </div>
          <div class="form-group">
            <label>Color</label>
            <input class="form-control" placeholder="Ingrese color ...">
          </div>
          <div class="form-group">
            <label>Modelo</label>
            <input class="form-control" placeholder="Ingrese modelo ...">
          </div>
          <div class="form-group">
            <label>Marca</label>
            <input class="form-control" placeholder="Ingrese marca ...">
          </div>

          <div class="form-group">
            <label>Tipo de vehiculo</label>
            <select class="form-control">
              <option >Seleccione</option>
              <option value="super usuario">Vehiculo</option>
              <option value="administrador">Minibus</option>
            </select>
          </div>
          <div class="form-group">
            <label>Socio afiliado a cuenta</label>
            <select class="form-control">
              <option >Seleccione</option>
              @foreach($socios as $socio):
                <option value="{{$socio->id}}">{{$socio->nom_socio.' '.$socio->app_socio.' '.$socio->apm_socio}}</option>
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
