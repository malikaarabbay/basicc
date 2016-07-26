<?php
use himiklab\thumbnail\EasyThumbnailImage;
use yii\helpers\Html;
use yii\helpers\Url;
?>

<div class="row">
    <div class="col-xs-12">
        <div class="block">
            <div id="owl-demo">
                <?php $banners = \common\models\Banner::find()->where(['is_published' => '1'])->orderBy('sort_index DESC')->all()?>
                <?php foreach($banners as $banner){?>
                    <div class="item"><img src="<?= $banner->image ?>" alt=""></div>
                <?php } ?>
            </div>
            <div class="row footer">
                <div class="col-xs-12 col-sm-4 col-md-4 res">
                    <div class="footer-logo">
                        <a href="<?= Url::toRoute(['/']) ?>">
                            <img src="img/logo.png" alt=""/><br/>
                            <?= Yii::t('app', 'Astana Education Department') ?>
                        </a>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4 col-md-4 res">
                    <div class="footer-block">
                        <div class="footer-title"><?= Yii::t('app', 'Contacts') ?></div>
                        <div class="contacts">
                            <div class="phone">+7 7172 55 68 51</div>
                            <div class="phone">+7 7172 55 68 56</div>
                            <div class="phone">+7 7172 55 74 23</div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4 col-md-4 res">
                    <div class="footer-block">
                        <div class="footer-title"><?= Yii::t('app', 'Address') ?></div>
                        <div class="address"><?= \common\models\Text::getValue('address');?></div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4 col-md-4 res">
                    <div class="footer-block">
                        <div class="footer-title"><?= Yii::t('app', 'Navigation') ?></div>
                        <ul class="list-unstyled f-nav">
                            <li><a href="<?= Url::toRoute(['/']) ?>"><?= Yii::t('app', 'Home') ?></a></li>
                            <li><a href="<?= Url::toRoute(['/']) ?>"><?= Yii::t('app', 'Version of eye') ?></a></li>
                            <li><a href="<?= Url::toRoute(['/']) ?>"><?= Yii::t('app', 'Feedback') ?></a></li>
                            <li><a href="<?= Url::toRoute(['/']) ?>"><?= Yii::t('app', 'Helpline') ?></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4 col-md-4 res">
                    <div class="footer-block">
                        <div class="footer-title"><?= Yii::t('app', 'Statistics') ?></div>
                    </div>
                </div>
            </div>
            <div class="row footer-copyright">
                <div class="col-xs-12 col-sm-9 col-md-9"><p><?= \common\models\Text::getValue('copyright');?></p></div>
                <div class="col-xs-12 col-sm-3 col-md-3"></div>
            </div>
        </div>
    </div>
</div>