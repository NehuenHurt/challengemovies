<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Movie
 * 
 * @property int $id
 * @property int $id_director
 * @property string $name
 * @property string $genere
 * 
 * @property Director $director
 * @property Collection|Actor[] $actors
 *
 * @package App\Models
 */
class Movie extends Model
{
	protected $table = 'movies';
	public $timestamps = false;

	protected $casts = [
		'id_director' => 'int'
	];

	protected $fillable = [
		'id_director',
		'name',
		'genere'
	];

	public function director()
	{
		return $this->belongsTo(Director::class, 'id_director');
	}

	public function actors()
	{
		return $this->belongsToMany(Actor::class, 'actor_movie', 'id_movie', 'id_actor')
					->withPivot('id');
	}
}
