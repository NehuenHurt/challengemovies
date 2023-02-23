<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class ActorTvShow
 * 
 * @property int $id
 * @property int $id_actor
 * @property int $id_tv_show
 * 
 * @property Actor $actor
 * @property TvShow $tv_show
 *
 * @package App\Models
 */
class ActorTvShow extends Model
{
	protected $table = 'actor_tv_show';
	public $timestamps = false;

	protected $casts = [
		'id_actor' => 'int',
		'id_tv_show' => 'int'
	];

	protected $fillable = [
		'id_actor',
		'id_tv_show'
	];

	public function actor()
	{
		return $this->belongsTo(Actor::class, 'id_actor');
	}

	public function tv_show()
	{
		return $this->belongsTo(TvShow::class, 'id_tv_show');
	}
}
