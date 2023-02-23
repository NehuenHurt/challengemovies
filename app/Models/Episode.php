<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Episode
 * 
 * @property int $id
 * @property int $id_season
 * @property int $id_tv_show
 * @property int $id_episode
 * @property int $id_director
 * @property string $name
 * 
 * @property Season $season
 * @property Director $director
 * @property TvShow $tv_show
 *
 * @package App\Models
 */
class Episode extends Model
{
	protected $table = 'episodes';
	public $timestamps = false;

	protected $casts = [
		'id_season' => 'int',
		'id_tv_show' => 'int',
		'id_episode' => 'int',
		'id_director' => 'int'
	];

	protected $fillable = [
		'id_season',
		'id_tv_show',
		'id_episode',
		'id_director',
		'name'
	];

	public function season()
	{
		return $this->belongsTo(Season::class, 'id_season');
	}

	public function director()
	{
		return $this->belongsTo(Director::class, 'id_director');
	}

	public function tv_show()
	{
		return $this->belongsTo(TvShow::class, 'id_tv_show');
	}
}
