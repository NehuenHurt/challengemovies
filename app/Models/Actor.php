<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Actor
 * 
 * @property int $id
 * @property string $name
 * 
 * @property Collection|Movie[] $movies
 * @property Collection|TvShow[] $tv_shows
 *
 * @package App\Models
 */
class Actor extends Model
{
	protected $table = 'actor';
	public $timestamps = false;

	protected $fillable = [
		'name'
	];

	public function movies()
	{
		return $this->belongsToMany(Movie::class, 'actor_movie', 'id_actor', 'id_movie')
					->withPivot('id');
	}

	public function tv_shows()
	{
		return $this->belongsToMany(TvShow::class, 'actor_tv_show', 'id_actor', 'id_tv_show')
					->withPivot('id');
	}
}
