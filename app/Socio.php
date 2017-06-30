<?php

namespace transporte;

use Illuminate\Database\Eloquent\Model;

class Socio extends Model
{
  protected $table = 'socio';

  /**
   * The attributes that are mass assignable.
   *
   * @var array
   */
  protected $fillable = ['cod_socio', 'nom_socio', 'app_socio','apm_socio','dir_socio','tipo_socio'];

  /**
   * The attributes excluded from the model's JSON form.
   *
   * @var array
   */
  protected $hidden = ['id'];
}
