<?php

namespace transporte;

use Illuminate\Database\Eloquent\Model;

class Linea extends Model
{
  protected $table = 'linea';

  /**
   * The attributes that are mass assignable.
   *
   * @var array
   */
  protected $fillable = ['cod_linea', 'nro_linea', 'ruta_linea'];

  /**
   * The attributes excluded from the model's JSON form.
   *
   * @var array
   */
  protected $hidden = ['id'];
}
