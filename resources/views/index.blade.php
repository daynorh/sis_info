@extends('plantilla')
@section('contenido')
  <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="row">
      <ol class="breadcrumb">
        <li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>

      </ol>
    </div><!--/.row-->

    <div class="row">
      <div class="col-lg-12">
        <h1 class="page-header">Bienvenido - <?php $a=\transporte\Socio::find(Auth::user()->id_socio); echo $a->nom_socio.' '.$a->app_socio.' '.$a->apm_socio; ?> </h1>
      </div>
    </div><!--/.row-->

  		<div class="row">
  			<div class="col-xs-12 col-md-6 col-lg-3">
  				<div class="panel panel-blue panel-widget ">
  					<div class="row no-padding">
  						<div class="col-sm-3 col-lg-5 widget-left">
  							<svg class="glyph stroked bag"><use xlink:href="#stroked-bag"></use></svg>
  						</div>
  						<div class="col-sm-9 col-lg-7 widget-right">
  							<div class="large">LINEA</div>
							<div class="text-muted"><?php $b=\transporte\Socio::find(Auth::user()->id);  $c=\transporte\Linea::find($b->id_linea); echo $c->nro_linea;?></div>
  						</div>
  					</div>
  				</div>
  			</div>
  			<div class="col-xs-12 col-md-6 col-lg-3">
  				<div class="panel panel-orange panel-widget">
  					<div class="row no-padding">
  						<div class="col-sm-3 col-lg-5 widget-left">
  							<svg class="glyph stroked empty-message"><use xlink:href="#stroked-empty-message"></use></svg>
  						</div>
  						<div class="col-sm-9 col-lg-7 widget-right">
  							<div class="large">MARCA</div>
  							<div class="text-muted">---</div>
  						</div>
  					</div>
  				</div>
  			</div>
  			<div class="col-xs-12 col-md-6 col-lg-3">
  				<div class="panel panel-teal panel-widget">
  					<div class="row no-padding">
  						<div class="col-sm-3 col-lg-5 widget-left">
  							<svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg>
  						</div>
  						<div class="col-sm-9 col-lg-7 widget-right">
  							<div class="large">PLACA</div>
  							<div class="text-muted">001-ABC</div>
  						</div>
  					</div>
  				</div>
  			</div>
  			<div class="col-xs-12 col-md-6 col-lg-3">
  				<div class="panel panel-red panel-widget">
  					<div class="row no-padding">
  						<div class="col-sm-3 col-lg-5 widget-left">
  							<svg class="glyph stroked app-window-with-content"><use xlink:href="#stroked-app-window-with-content"></use></svg>
  						</div>
  						<div class="col-sm-9 col-lg-7 widget-right">
  							<div class="large">TIPO</div>
  							<div class="text-muted">------</div>
  						</div>
  					</div>
  				</div>
  			</div>
  		</div><!--/.row-->

  		<div class="row">
  			<div class="col-md-8">
  				<div class="panel panel-default">
  					<div class="panel-heading">
            </div>
  					<div class="panel-body">
              <img src="{{url('img/sindicato.jpg')}}" alt="">
  					</div>
  				</div>


  					<div class="panel-body">

  					</div>




  			</div><!--/.col-->

  			<div class="col-md-4">

  				<div class="panel panel-red">
  					<div class="panel-heading dark-overlay"><svg class="glyph stroked calendar"><use xlink:href="#stroked-calendar"></use></svg>Calendario</div>
  					<div class="panel-body">
  						<div id="calendar"></div>
  					</div>
  				</div>



  				</div>

  			</div><!--/.col-->
  		</div><!--/.row-->
  	</div>	<!--/.main-->


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
