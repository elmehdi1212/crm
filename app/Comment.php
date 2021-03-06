<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Comment extends Model
{
    use SoftDeletes;

    public $table = 'comments';

    protected $dates = [
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    protected $fillable = [
        'user_id',
        'reclamation_id',
        'created_at',
        'updated_at',
        'deleted_at',
        'author_name',
        'author_email',
        'comment_text',
    ];

    public function reclamation()
    {
        return $this->belongsTo(Reclamation::class, 'reclamation_id');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}
