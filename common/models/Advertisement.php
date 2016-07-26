<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "{{%advertisement}}".
 *
 * @property integer $id
 * @property string $title_ru
 * @property string $description_ru
 * @property string $title_kz
 * @property string $description_kz
 * @property string $photo
 * @property integer $views
 * @property integer $is_published
 * @property integer $sort_index
 * @property integer $created
 * @property integer $updated
 * @property integer $created_user_id
 * @property integer $updated_user_id
 * @property string $slug
 * @property string $meta_title
 * @property string $meta_keywords
 * @property string $meta_description
 */
class Advertisement extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%advertisement}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['description_ru', 'description_kz'], 'string'],
            [['views', 'is_published', 'sort_index', 'created', 'updated', 'created_user_id', 'updated_user_id'], 'integer'],
            [['title_ru', 'title_kz', 'photo', 'slug', 'meta_title', 'meta_keywords', 'meta_description'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'title_ru' => Yii::t('app', 'Title RU'),
            'description_ru' => Yii::t('app', 'Description RU'),
            'title_kz' => Yii::t('app', 'Title KZ'),
            'description_kz' => Yii::t('app', 'Description KZ'),
            'photo' => Yii::t('app', 'Photo'),
            'views' => Yii::t('app', 'Views'),
            'is_published' => Yii::t('app', 'Is Published'),
            'sort_index' => Yii::t('app', 'Sort Index'),
            'created' => Yii::t('app', 'Created'),
            'updated' => Yii::t('app', 'Updated'),
            'created_user_id' => Yii::t('app', 'Created User ID'),
            'updated_user_id' => Yii::t('app', 'Updated User ID'),
            'slug' => Yii::t('app', 'Slug'),
            'meta_title' => Yii::t('app', 'Meta Title'),
            'meta_keywords' => Yii::t('app', 'Meta Keywords'),
            'meta_description' => Yii::t('app', 'Meta Description'),
        ];
    }
}
