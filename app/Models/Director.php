<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Director
 * 
 * @property int $id
 * @property string $name
 * 
 * @property Collection|Episode[] $episodes
 * @property Collection|Movie[] $movies
 *
 * @package App\Models
 */
class Director extends Model
{
	protected $table = 'director';
	public $timestamps = false;

	protected $fillable = [
		'name'
	];

	public function episodes()
	{
		return $this->hasMany(Episode::class, 'id_director');
	}

	public function movies()
	{
		return $this->hasMany(Movie::class, 'id_director');
	}
}
