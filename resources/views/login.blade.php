<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>autenticacion de usuario</title>


  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:600'>

      <link rel="stylesheet" href="css/style.css">


</head>

<body>
  <div class="login-wrap">
	<div class="login-html">
		<form  action="login" method="post">
			@if (count($errors))
	    <ul>
	        @foreach($errors->all() as $error)

	            <li style="color:red;">{{ $error }}</li>
	        @endforeach
	    </ul>
	@endif
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Ingresar</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Registrar nuevo</label>
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
					<label  class="label">Direccion de correo electronico</label>
					<input id="email" type="email" name="email" class="input" required>
				</div>
				<div class="group">
					<label for="pass" class="label">Contraseña</label>
					<input id="password" type="password" class="input" name="password"  data-type="password" required>
				</div>

				<div class="group">
					<input type="submit" class="button" value="Ingresar">
				</div>
				<div class="hr"></div>
</form>
			</div>
			<div class="sign-up-htm">
				<form  action="registrar" method="post">
				<div class="group">
					<label  class="label">Nombres</label>
					<input id="usern" name ="nom_socio" type="text" class="input">
				</div>
				<div class="group">
					<label  class="label">Apellido Paterno</label>
					<input id="userap" name="app_socio" type="text" class="input">
				</div>
				<div class="group">
					<label  class="label">Apellido Materno</label>
					<input id="useram"  name="apm_socio" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Domicilio</label>
					<textarea id="pass" name="direccion" class="input" cols="70" rows="5"></textarea>
				</div>
				<div class="group">
					<label  class="label">Correo</label>
					<select class="select" name="tipo" required>
						<option value="DUEÑO">DUEÑO</option>
						<option value="ASALARIADO">ASALARIADO</option>

					</select>
				</div>
				<div class="group">
					<label  class="label">Correo</label>
					<input id="userc"  name="correo" type="email" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Contraseña</label>
					<input id="pass" name="pass" type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<input type="submit" class="button" value="Registrate">
				</div>
			</form>
				<div class="hr"></div>
				<div class="foot-lnk">
					<label for="tab-1">El tipo de usuario creado es un usuario comun con permisos de visualizacion unicamente</a>
				</div>
			</div>
		</div>
	</div>
</div>



</body>
</html>
