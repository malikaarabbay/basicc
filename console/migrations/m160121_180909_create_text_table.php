<?php

use yii\db\Schema;
use yii\db\Migration;

class m160121_180909_create_text_table extends Migration
{
    public function up()
    {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            // http://stackoverflow.com/questions/766809/whats-the-difference-between-utf8-general-ci-and-utf8-unicode-ci
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE=InnoDB';
        }

        $this->createTable('{{%text}}', [
            'id' => $this->primaryKey(),
            'key' => $this->string(),
            'value' => $this->string(),
            'comment' => $this->string(),
            'lang_id' => $this->smallInteger(),
            'created' => $this->integer(),
            'updated' => $this->integer(),
            'created_user_id' => $this->integer(),
            'updated_user_id' => $this->integer(),

        ], $tableOptions);

        $this->batchInsert('{{%text}}',
            ['key', 'value', 'lang_id'],
            [
                ['address', 'Республика Казахстан, город Астана ул. Бейбiтшiлiк 11, 7 этаж', '1'],
                ['copyright', '© 2016 Управление образования города Астаны. Создано ТОО "Компания Фактум"', '1'],
                ['address', 'Республика Казахстан, город Астана ул. Бейбiтшiлiк 11, 7 этаж', '2'],
                ['copyright', '© 2016 Управление образования города Астаны. Создано ТОО "Компания Фактум"', '2'],
            ]
        );
    }

    public function down()
    {
        $this->dropTable('{{%text}}');
    }
}
