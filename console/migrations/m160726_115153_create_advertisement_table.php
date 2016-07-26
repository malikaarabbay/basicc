<?php

use yii\db\Migration;

/**
 * Handles the creation for table `advertisement`.
 */
class m160726_115153_create_advertisement_table extends Migration
{
    public function up()
    {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            // http://stackoverflow.com/questions/766809/whats-the-difference-between-utf8-general-ci-and-utf8-unicode-ci
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE=InnoDB';
        }

        $this->createTable('{{%advertisement}}', [
            'id' => $this->primaryKey(),
            'title_ru' => $this->string(),
            'description_ru' => $this->text(),
            'title_kz' => $this->string(),
            'description_kz' => $this->text(),
            'photo' => $this->string(),

            'views' => $this->integer()->defaultValue(0),
            'is_published' => $this->integer()->defaultValue(0),
            'sort_index' => $this->integer(),

            'created' => $this->integer(),
            'updated' => $this->integer(),
            'created_user_id' => $this->integer(),
            'updated_user_id' => $this->integer(),

            'slug' => $this->string(),
            'meta_title' => $this->string(),
            'meta_keywords' => $this->string(),
            'meta_description' => $this->string(),

        ], $tableOptions);

        $this->batchInsert('{{%advertisement}}',
            ['title_ru', 'title_kz', 'description_ru', 'description_kz', 'photo','created', 'updated', 'slug','is_published'],
            [
                ['Заголовок ру', 'Заголовок kz', 'Описание контента' , 'Описание контента' , 'article.jpg', time(), time(), 'advertisement-1', 1],
                ['Заголовок ру', 'Заголовок kz', 'Описание контента' , 'Описание контента' , 'article.jpg', time(), time(), 'advertisement-2', 1],
                ['Заголовок ру', 'Заголовок kz', 'Описание контента' , 'Описание контента' , 'article.jpg', time(), time(), 'advertisement-3', 1],
                ['Заголовок ру', 'Заголовок kz', 'Описание контента' , 'Описание контента' , 'article.jpg', time(), time(), 'advertisement-4', 1],
            ]
        );


    }

    public function down()
    {
        $this->dropTable('{{%advertisement}}');
    }
}
