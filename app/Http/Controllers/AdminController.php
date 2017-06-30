<?php

namespace transporte\Http\Controllers;

use Illuminate\Http\Request;

use transporte\Http\Requests;
use transporte\Http\Controllers\Controller;
use transporte\User;
use transporte\Socio;
use transporte\Linea;
use Response;

class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('index');
    }
    public function socios()
    {
       $linea= Linea::get();
        return view('socios')->with('lineas',$linea);
    }
    public function admsocios()
    {
       $linea= Linea::get();
        return view('admsocios')->with('lineas',$linea);
    }
    public function admusuarios()
    {
       $linea= Linea::get();
        return view('admusuarios')->with('lineas',$linea);
    }
    public function listsocios()
    {
       $linea= Linea::get();
        return view('listsocios')->with('lineas',$linea);
    }
    public function usuario()
    {
       $socio= Socio::get();
        return view('usuarios')->with('socios',$socio);
    }
    public function json()
    {
       $socio= Socio::get();
        return Response::json($socio);
    }
    public function json2()
    {
       $socio= User::get();
        return Response::json($socio);
    }

    public function registrar(Request $request)
    {
        $nuevo= new Socio;
        $usuario= new User;

        $nuevo->nom_socio=$request->input('nom_socio');
        $nuevo->app_socio=$request->input('app_socio');
        $nuevo->apm_socio=$request->input('apm_socio');
        $nuevo->dir_socio=$request->input('direccion');
        $nuevo->tipo_socio= $request->input('tipo');
        $nuevo->cod_socio='0';
        $nuevo->save();

        $codigo= Socio::find($nuevo->id);
        if($codigo->id<10):
        $codigo->cod_socio=substr(($codigo->tipo_socio),1,1).'-'.'00'.$nuevo->id;
        $usuario->cod_usuario='U-'.'00'.$nuevo->id;
        elseif($codigo->id<100):
        $codigo->cod_socio=substr(($codigo->tipo_socio),0,1).'-'.'0'.$nuevo->id;
        $usuario->cod_usuario='U-'.'0'.$nuevo->id;
        elseif($codigo->id<100):
        $codigo->cod_socio=substr(($codigo->tipo_socio),0,1).'-'.$nuevo->id;
        $usuario->cod_usuario='U-'.$nuevo->id;
      endif;
        $codigo->save();
        $usuario->email=$request->input('correo');
        $usuario->password=bcrypt($request->input('pass'));
        $usuario->id_socio= $nuevo->id;
        $usuario->save();
        return redirect()->route('login');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
