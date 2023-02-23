<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class ActorMovie
 * 
 * @property int $id
 * @property int $id_actor
 * @property int $id_movie
 * 
 * @property Movie $movie
 * @property Actor $actor
 *
 * @package App\Models
 */
class ActorMovie extends Model
{
	protected $table = 'actor_movie';
	public $timestamps = false;

	protected $casts = [
		'id_actor' => 'int',
		'id_movie' => 'int'
	];

	protected $fillable = [
		'id_actor',
		'id_movie'
	];

	public function movie()
	{
		return $this->belongsTo(Movie::class, 'id_movie');
	}

	public function actor()
	{
		return $this->belongsTo(Actor::class, 'id_actor');
	}
}
