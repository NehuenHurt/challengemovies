<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class TvShow
 * 
 * @property int $id
 * @property string $name
 * @property string $genere
 * 
 * @property Collection|Actor[] $actors
 * @property Collection|Episode[] $episodes
 * @property Collection|Season[] $seasons
 *
 * @package App\Models
 */
class TvShow extends Model
{
	protected $table = 'tv_show';
	public $timestamps = false;

	protected $fillable = [
		'name',
		'genere'
	];

	public function actors()
	{
		return $this->belongsToMany(Actor::class, 'actor_tv_show', 'id_tv_show', 'id_actor')
					->withPivot('id');
	}

	public function episodes()
	{
		return $this->hasMany(Episode::class, 'id_tv_show');
	}

	public function seasons()
	{
		return $this->hasMany(Season::class, 'id_tv_show');
	}
}
