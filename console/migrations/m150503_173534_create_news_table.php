<?php

use yii\db\Schema;
use yii\db\Migration;

class m150503_173534_create_news_table extends Migration
{
    public function up()
    {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            // http://stackoverflow.com/questions/766809/whats-the-difference-between-utf8-general-ci-and-utf8-unicode-ci
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE=InnoDB';
        }

        $this->createTable('{{%news}}', [
            'id' => $this->primaryKey(),
            'category_id' => $this->integer()->defaultValue(0),
            'title_ru' => $this->string(),
            'title_kz' => $this->string(),
            'anounce_ru' => $this->text(),
            'anounce_kz' => $this->text(),
            'description_ru' => $this->text(),
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

        $this->batchInsert('{{%news}}',
            ['title_ru', 'anounce_ru', 'description_ru', 'title_kz', 'anounce_kz', 'description_kz', 'photo','created', 'updated', 'slug', 'is_published'],
            [
                ['Внедрение  дуальной системы обучения в колледжах:  проблемы и пути решении', '28 июня 2016 года Управлением образования города Астаны отделом технического и профессионального образования на базе учебного заведения колледж АО «Финансовая Академия» проведен круглый стол  на тему: «Внедрение дуальной системы обучения в колледжах: проблемы и пути решении». Целью круглого стола был обмен опытом с участием заместителей директора по производственной работе  учебных заведений ТиПО  г.Астаны.' , 'В ходе круглого стола  представлены опыт внедрения дуальной системы обучения Технического колледжа специальность «Токарное дело», «Лифтовое хозяйство эскалаторы», Колледж энергетики и связи специальность «Радиоэлектроника и связь», Колледж менеджмента и бизнеса специальность «Обслуживание и ремонт телекоммуникационного оборудования и бытовой техники», Колледж общественного питания и сервиса специальность  «Организация питания». Так же участники круглого стола рассмотрели  и обсудили вопросы и проблемы, с которыми они столкнулись в процессе работы по внедрению дуального обучения.' , 'заголовок каз', 'аннонс каз', 'описание каз', 'news.jpg', time(), time(), 'news-1', 1],
                ['Внедрение  дуальной системы обучения в колледжах:  проблемы и пути решении', '28 июня 2016 года Управлением образования города Астаны отделом технического и профессионального образования на базе учебного заведения колледж АО «Финансовая Академия» проведен круглый стол  на тему: «Внедрение дуальной системы обучения в колледжах: проблемы и пути решении». Целью круглого стола был обмен опытом с участием заместителей директора по производственной работе  учебных заведений ТиПО  г.Астаны.' , 'В ходе круглого стола  представлены опыт внедрения дуальной системы обучения Технического колледжа специальность «Токарное дело», «Лифтовое хозяйство эскалаторы», Колледж энергетики и связи специальность «Радиоэлектроника и связь», Колледж менеджмента и бизнеса специальность «Обслуживание и ремонт телекоммуникационного оборудования и бытовой техники», Колледж общественного питания и сервиса специальность  «Организация питания». Так же участники круглого стола рассмотрели  и обсудили вопросы и проблемы, с которыми они столкнулись в процессе работы по внедрению дуального обучения.' , 'заголовок каз', 'аннонс каз', 'описание каз', 'news.jpg', time(), time(), 'news-2', 1],
                ['Внедрение  дуальной системы обучения в колледжах:  проблемы и пути решении', '28 июня 2016 года Управлением образования города Астаны отделом технического и профессионального образования на базе учебного заведения колледж АО «Финансовая Академия» проведен круглый стол  на тему: «Внедрение дуальной системы обучения в колледжах: проблемы и пути решении». Целью круглого стола был обмен опытом с участием заместителей директора по производственной работе  учебных заведений ТиПО  г.Астаны.' , 'В ходе круглого стола  представлены опыт внедрения дуальной системы обучения Технического колледжа специальность «Токарное дело», «Лифтовое хозяйство эскалаторы», Колледж энергетики и связи специальность «Радиоэлектроника и связь», Колледж менеджмента и бизнеса специальность «Обслуживание и ремонт телекоммуникационного оборудования и бытовой техники», Колледж общественного питания и сервиса специальность  «Организация питания». Так же участники круглого стола рассмотрели  и обсудили вопросы и проблемы, с которыми они столкнулись в процессе работы по внедрению дуального обучения.' , 'заголовок каз', 'аннонс каз', 'описание каз', 'news.jpg', time(), time(), 'news-3', 1],
                ['Внедрение  дуальной системы обучения в колледжах:  проблемы и пути решении', '28 июня 2016 года Управлением образования города Астаны отделом технического и профессионального образования на базе учебного заведения колледж АО «Финансовая Академия» проведен круглый стол  на тему: «Внедрение дуальной системы обучения в колледжах: проблемы и пути решении». Целью круглого стола был обмен опытом с участием заместителей директора по производственной работе  учебных заведений ТиПО  г.Астаны.' , 'В ходе круглого стола  представлены опыт внедрения дуальной системы обучения Технического колледжа специальность «Токарное дело», «Лифтовое хозяйство эскалаторы», Колледж энергетики и связи специальность «Радиоэлектроника и связь», Колледж менеджмента и бизнеса специальность «Обслуживание и ремонт телекоммуникационного оборудования и бытовой техники», Колледж общественного питания и сервиса специальность  «Организация питания». Так же участники круглого стола рассмотрели  и обсудили вопросы и проблемы, с которыми они столкнулись в процессе работы по внедрению дуального обучения.' , 'заголовок каз', 'аннонс каз', 'описание каз', 'news.jpg', time(), time(), 'news-4', 1],
                ['Внедрение  дуальной системы обучения в колледжах:  проблемы и пути решении', '28 июня 2016 года Управлением образования города Астаны отделом технического и профессионального образования на базе учебного заведения колледж АО «Финансовая Академия» проведен круглый стол  на тему: «Внедрение дуальной системы обучения в колледжах: проблемы и пути решении». Целью круглого стола был обмен опытом с участием заместителей директора по производственной работе  учебных заведений ТиПО  г.Астаны.' , 'В ходе круглого стола  представлены опыт внедрения дуальной системы обучения Технического колледжа специальность «Токарное дело», «Лифтовое хозяйство эскалаторы», Колледж энергетики и связи специальность «Радиоэлектроника и связь», Колледж менеджмента и бизнеса специальность «Обслуживание и ремонт телекоммуникационного оборудования и бытовой техники», Колледж общественного питания и сервиса специальность  «Организация питания». Так же участники круглого стола рассмотрели  и обсудили вопросы и проблемы, с которыми они столкнулись в процессе работы по внедрению дуального обучения.' , 'заголовок каз', 'аннонс каз', 'описание каз', 'news.jpg', time(), time(), 'news-5', 1],
                ['Внедрение  дуальной системы обучения в колледжах:  проблемы и пути решении', '28 июня 2016 года Управлением образования города Астаны отделом технического и профессионального образования на базе учебного заведения колледж АО «Финансовая Академия» проведен круглый стол  на тему: «Внедрение дуальной системы обучения в колледжах: проблемы и пути решении». Целью круглого стола был обмен опытом с участием заместителей директора по производственной работе  учебных заведений ТиПО  г.Астаны.' , 'В ходе круглого стола  представлены опыт внедрения дуальной системы обучения Технического колледжа специальность «Токарное дело», «Лифтовое хозяйство эскалаторы», Колледж энергетики и связи специальность «Радиоэлектроника и связь», Колледж менеджмента и бизнеса специальность «Обслуживание и ремонт телекоммуникационного оборудования и бытовой техники», Колледж общественного питания и сервиса специальность  «Организация питания». Так же участники круглого стола рассмотрели  и обсудили вопросы и проблемы, с которыми они столкнулись в процессе работы по внедрению дуального обучения.' , 'заголовок каз', 'аннонс каз', 'описание каз', 'news.jpg', time(), time(), 'news-6', 1],
                ['Внедрение  дуальной системы обучения в колледжах:  проблемы и пути решении', '28 июня 2016 года Управлением образования города Астаны отделом технического и профессионального образования на базе учебного заведения колледж АО «Финансовая Академия» проведен круглый стол  на тему: «Внедрение дуальной системы обучения в колледжах: проблемы и пути решении». Целью круглого стола был обмен опытом с участием заместителей директора по производственной работе  учебных заведений ТиПО  г.Астаны.' , 'В ходе круглого стола  представлены опыт внедрения дуальной системы обучения Технического колледжа специальность «Токарное дело», «Лифтовое хозяйство эскалаторы», Колледж энергетики и связи специальность «Радиоэлектроника и связь», Колледж менеджмента и бизнеса специальность «Обслуживание и ремонт телекоммуникационного оборудования и бытовой техники», Колледж общественного питания и сервиса специальность  «Организация питания». Так же участники круглого стола рассмотрели  и обсудили вопросы и проблемы, с которыми они столкнулись в процессе работы по внедрению дуального обучения.' , 'заголовок каз', 'аннонс каз', 'описание каз', 'news.jpg', time(), time(), 'news-7', 1],
                ['Внедрение  дуальной системы обучения в колледжах:  проблемы и пути решении', '28 июня 2016 года Управлением образования города Астаны отделом технического и профессионального образования на базе учебного заведения колледж АО «Финансовая Академия» проведен круглый стол  на тему: «Внедрение дуальной системы обучения в колледжах: проблемы и пути решении». Целью круглого стола был обмен опытом с участием заместителей директора по производственной работе  учебных заведений ТиПО  г.Астаны.' , 'В ходе круглого стола  представлены опыт внедрения дуальной системы обучения Технического колледжа специальность «Токарное дело», «Лифтовое хозяйство эскалаторы», Колледж энергетики и связи специальность «Радиоэлектроника и связь», Колледж менеджмента и бизнеса специальность «Обслуживание и ремонт телекоммуникационного оборудования и бытовой техники», Колледж общественного питания и сервиса специальность  «Организация питания». Так же участники круглого стола рассмотрели  и обсудили вопросы и проблемы, с которыми они столкнулись в процессе работы по внедрению дуального обучения.' , 'заголовок каз', 'аннонс каз', 'описание каз', 'news.jpg', time(), time(), 'news-8', 1],
                ['Внедрение  дуальной системы обучения в колледжах:  проблемы и пути решении', '28 июня 2016 года Управлением образования города Астаны отделом технического и профессионального образования на базе учебного заведения колледж АО «Финансовая Академия» проведен круглый стол  на тему: «Внедрение дуальной системы обучения в колледжах: проблемы и пути решении». Целью круглого стола был обмен опытом с участием заместителей директора по производственной работе  учебных заведений ТиПО  г.Астаны.' , 'В ходе круглого стола  представлены опыт внедрения дуальной системы обучения Технического колледжа специальность «Токарное дело», «Лифтовое хозяйство эскалаторы», Колледж энергетики и связи специальность «Радиоэлектроника и связь», Колледж менеджмента и бизнеса специальность «Обслуживание и ремонт телекоммуникационного оборудования и бытовой техники», Колледж общественного питания и сервиса специальность  «Организация питания». Так же участники круглого стола рассмотрели  и обсудили вопросы и проблемы, с которыми они столкнулись в процессе работы по внедрению дуального обучения.' , 'заголовок каз', 'аннонс каз', 'описание каз', 'news.jpg', time(), time(), 'news-9', 1],
            ]
        );

    }

    public function down()
    {
        $this->dropTable('{{%news}}');
    }
}
