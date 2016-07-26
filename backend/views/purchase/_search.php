<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\search\PurchaseSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="purchase-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'title_ru') ?>

    <?= $form->field($model, 'description_ru') ?>

    <?= $form->field($model, 'title_kz') ?>

    <?= $form->field($model, 'description_kz') ?>

    <?php // echo $form->field($model, 'photo') ?>

    <?php // echo $form->field($model, 'purchase_file') ?>

    <?php // echo $form->field($model, 'views') ?>

    <?php // echo $form->field($model, 'is_published') ?>

    <?php // echo $form->field($model, 'sort_index') ?>

    <?php // echo $form->field($model, 'created') ?>

    <?php // echo $form->field($model, 'updated') ?>

    <?php // echo $form->field($model, 'created_user_id') ?>

    <?php // echo $form->field($model, 'updated_user_id') ?>

    <?php // echo $form->field($model, 'slug') ?>

    <?php // echo $form->field($model, 'meta_title') ?>

    <?php // echo $form->field($model, 'meta_keywords') ?>

    <?php // echo $form->field($model, 'meta_description') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Yii::t('app', 'Reset'), ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
