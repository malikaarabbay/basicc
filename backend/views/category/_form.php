<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use vova07\imperavi\Widget;
use vova07\fileapi\Widget as FileAPI;
use himiklab\thumbnail\EasyThumbnailImage;
use yii\helpers\Url;
use yii\helpers\ArrayHelper;
use common\models\Category;


/* @var $this yii\web\View */
/* @var $model common\models\Category */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="category-form">

    <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]); ?>

    <div class="nav-tabs-custom">
        <ul class="nav nav-tabs">
            <li class="active">
                <a href="#tab_1" data-toggle="tab">Данные</a>
            </li>
<!--            <li>-->
<!--                <a href="#tab_2" data-toggle="tab">Изображении</a>-->
<!--            </li>-->
            <li class="pull-right">

                <?php if($model->isNewRecord) {?>
                    <?= Html::submitButton('<span class="glyphicon glyphicon-ok"></span> '.Yii::t('app', 'Create'),['class' => 'btn btn-success']) ?>
                <?php } else {?>
                    <?= Html::submitButton('<span class="glyphicon glyphicon-refresh"></span> '.Yii::t('app', 'Save'),['class' => 'btn btn-primary']) ?>
                <?php } ?>

            </li>
        </ul>
        <div class="tab-content">

            <div class="tab-pane active" id="tab_1">

                <div class="row">
                    <div class="col-md-8 col-xs-12">

                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Русский</a></li>
                            <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Казахский</a></li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="home">

                                <?= $form->field($model, 'title_ru')->textInput(['maxlength' => true]) ?>

                                <?= $form->field($model, 'description_ru')->widget(Widget::className(), [
                                    'settings' => [
                                        'lang' => 'ru',
                                        'minHeight' => 150,
                                        'imageUpload' => Url::to(['/site/image-upload']),
                                        'imageManagerJson' => Url::to(['/site/images-get']),
                                        'plugins' => [
                                            'imagemanager'
                                        ]
                                    ]
                                ]); ?>

                            </div>
                            <div role="tabpanel" class="tab-pane" id="profile">

                                <?= $form->field($model, 'title_kz')->textInput(['maxlength' => true]) ?>

                                <?= $form->field($model, 'description_kz')->widget(Widget::className(), [
                                    'settings' => [
                                        'lang' => 'ru',
                                        'minHeight' => 150,
                                        'imageUpload' => Url::to(['/site/image-upload']),
                                        'imageManagerJson' => Url::to(['/site/images-get']),
                                        'plugins' => [
                                            'imagemanager'
                                        ]
                                    ]
                                ]); ?>

                            </div>

                        </div>
                        
                        <?= $form->field($model, 'parent_id')->dropDownList(ArrayHelper::map($categories, 'id', 'title'),  ['prompt' => 'Без категории']) ?>

                        <?= $form->field($model, 'model_name')->hiddenInput(['value' => $model_name])->label(false) ?>

                        <?= $form->field($model, 'sort_index')->input('number', ['min' => '0']) ?>

                        <?= $form->field($model, 'is_published')->checkbox() ?>

                    </div>

                    <div class="col-md-4 col-xs-12">
                        <?= $form->field($model, 'photo')->widget(
                            FileAPI::className(),
                            [
                                'settings' => [
                                    'url' => ['fileapi-upload'],
                                    'elements' => [
                                        'preview' => [
                                            'width' => 250,
                                            'height' => 200
                                        ]
                                    ],
                                ],
                            ])
                        ?>

                        <?= $form->field($model, 'meta_keywords')->textarea(['rows' => 4]) ?>

                        <?= $form->field($model, 'meta_description')->textarea(['rows' => 4]) ?>

                        <?= $form->field($model, 'slug')->textInput(['maxlength' => 255]) ?>

                    </div>
                </div>

            </div><!-- /.tab-pane -->

            <div class="tab-pane " id="tab_2">

            </div><!-- /.tab-pane -->
        </div><!-- /.tab-content -->
    </div>

    <?php ActiveForm::end(); ?>

</div>
