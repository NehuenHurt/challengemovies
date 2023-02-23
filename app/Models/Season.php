<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Season
 * 
 * @property int $id
 * @property int $season_number
 * @property int $id_tv_show
 * @property string $name
 * 
 * @property TvShow $tv_show
 * @property Collection|Episode[] $episodes
 *
 * @package App\Models
 */
class Season extends Model
{
	protected $table = 'season';
	public $timestamps = false;

	protected $casts = [
		'season_number' => 'int',
		'id_tv_show' => 'int'
	];

	protected $fillable = [
		'season_number',
		'id_tv_show',
		'name'
	];

	public function tv_show()
	{
		return $this->belongsTo(TvShow::class, 'id_tv_show');
	}

	public function episodes()
	{
		return $this->hasMany(Episode::class, 'id_season');
	}
}
