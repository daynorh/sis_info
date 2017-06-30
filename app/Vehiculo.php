<?php

namespace transporte;

use Illuminate\Database\Eloquent\Model;

class Vehiculo extends Model
{
  protected $table = 'vehiculo';

  /**
   * The attributes that are mass assignable.
   *
   * @var array
   */
  protected $fillable = ['cod_vehiculo', 'pc_vehiculo', 'color_vehiculo','modelo_vehiculo','marca_vehiculo','tipo_vehiculo'];

  /**
   * The attributes excluded from the model's JSON form.
   *
   * @var array
   */
  protected $hidden = ['id'];
}
