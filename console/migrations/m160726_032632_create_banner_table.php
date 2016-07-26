<?php
use yii\db\Schema;
use yii\db\Migration;

/**
 * Handles the creation for table `banner`.
 */
class m160726_032632_create_banner_table extends Migration
{
    public function up()
    {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE=InnoDB';
        }

        $this->createTable('{{%banner}}', [
            'id' => Schema::TYPE_PK,
            'title' => Schema::TYPE_STRING,
            'photo' => Schema::TYPE_STRING,
            'link' => Schema::TYPE_STRING,
            'type_id' => Schema::TYPE_INTEGER,

            'is_published' => Schema::TYPE_SMALLINT . ' DEFAULT 0',
            'sort_index' => Schema::TYPE_INTEGER,
            'created' => Schema::TYPE_INTEGER,
            'updated' => Schema::TYPE_INTEGER,
            'deleted' => Schema::TYPE_SMALLINT . ' DEFAULT 0'

        ], $tableOptions);

        $this->batchInsert('{{%banner}}',
            ['title', 'photo', 'link', 'is_published', 'sort_index'],
            [
                ['Название', 'banner1.jpg', '/', '1', 1],
                ['Название', 'banner1.jpg', '/', '1', 2],
                ['Название', 'banner1.jpg', '/', '1', 3],
                ['Название', 'banner1.jpg', '/', '1', 4],
                ['Название', 'banner1.jpg', '/', '1', 5],
                ['Название', 'banner1.jpg', '/', '1', 6],
                ['Название', 'banner1.jpg', '/', '1', 7],
                ['Название', 'banner1.jpg', '/', '1', 8],
                ['Название', 'banner1.jpg', '/', '1', 9],
                ['Название', 'banner1.jpg', '/', '1', 10],
            ]
        );
    }

    public function down()
    {
        $this->dropTable('{{%banner}}');
    }
}
