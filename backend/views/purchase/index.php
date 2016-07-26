<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel common\models\search\PurchaseSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Purchases');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="purchase-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a(Yii::t('app', 'Create Purchase'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'title_ru',
            'description_ru:ntext',
            'title_kz',
            'description_kz:ntext',
            // 'photo',
            // 'purchase_file',
            // 'views',
            // 'is_published',
            // 'sort_index',
            // 'created',
            // 'updated',
            // 'created_user_id',
            // 'updated_user_id',
            // 'slug',
            // 'meta_title',
            // 'meta_keywords',
            // 'meta_description',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
