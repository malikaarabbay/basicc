<?php
use yii\helpers\Url;
?>

<div class="header-top-block">
    <div class="btn-group">
        <?= Yii::t('app', 'languages') ?>
        <a href="" class="btn btn-primary"><?= $current->name ?></a>
        <?php foreach ($langs as $lang):?>
        <a href="<?='/'.$lang->url.Yii::$app->getRequest()->getLangUrl()?>" class="btn btn-primary"><?= $lang->name ?></a>
        <?php endforeach;?>
    </div>
</div>
