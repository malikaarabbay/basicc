<?php

use yii\bootstrap\NavBar;
use yii\bootstrap\Nav;
use yii\helpers\Url;
?>

<?php
//NavBar::begin([
//    'brandLabel' => 'GreengoCMS',
//    'brandUrl' => Yii::$app->homeUrl,
//    'options' => [
//        'class' => 'navbar-inverse',
//    ],
//]);
//$menuItems = [
//    ['label' => 'Главная', 'url' => ['/site/']],
//    ['label' => 'Новости', 'url' => ['/news']],
//    ['label' => 'Статьи', 'url' => ['/article']],
//    ['label' => 'Галерея', 'url' => ['/gallery']],
//    ['label' => 'Виджеты', 'url' => ['/widget']],
//    ['label' => 'Контакты', 'url' => ['/site/contact']],
//];
//if (Yii::$app->user->isGuest) {
//    $menuItems[] = ['label' => 'Регистрация', 'url' => ['/site/signup']];
//    $menuItems[] = ['label' => 'Войти', 'url' => ['/site/login']];
//} else {
//    $menuItems[] = [
//        'label' => 'Выйти (' . Yii::$app->user->identity->firstname.' '.Yii::$app->user->identity->lastname. ')',
//        'url' => ['/site/logout'],
//        'linkOptions' => ['data-method' => 'post']
//    ];
//}
//echo Nav::widget([
//    'options' => ['class' => 'navbar-nav navbar-right'],
//    'items' => $menuItems,
//]);
//NavBar::end();
//?>
<div class="header">
    <div class="header-top">
        <div class="row">
            <div class="col-xs-12 col-sm-7 col-md-7">
                <?= \frontend\widgets\LangWidget::widget() ?>
                <div class="header-top-block">
                    <button type="button" class="btn btn-primary"><?= Yii::t('app', 'Sitemap') ?></button>
                </div>
                <div class="header-top-block">
                    <div class="btn-group">
                        <button type="button" class="btn btn-primary btn-a">A +</button>
                        <button type="button" class="btn btn-primary btn-a">А -</button>
                    </div>
                </div>
                <div class="header-top-block">
                    <button type="button" class="btn btn-primary"><i class="fa fa-adjust" aria-hidden="true"></i> <?= Yii::t('app', 'Version of eye') ?></button>
                </div>
            </div>
            <div class="col-xs-12 col-sm-5 col-md-5">
                <div class="header-right pull-right">
                <div class="header-top-block">
                    <div class="social-icon">
                        <a target="_blank" href="http://facebook.com"><i class="fa fa-facebook"></i></a>
                        <a target="_blank" href="http://twitter.com"><i class="fa fa-twitter"></i></a>
                        <a target="_blank" href="http://vk.com"><i class="fa fa-vk"></i></a>
                        <a target="_blank" href="http://ok.ru"><i class="fa fa-odnoklassniki"></i></a>
                    </div>
                </div>
                <div class="header-top-block">
                    <div class="btn-group">
                        <?php if(Yii::$app->user->isGuest) {?>
                        <a href="<?= Url::toRoute(['/site/login']) ?>" class="btn btn-primary"><?= Yii::t('app', 'Log In') ?></a>
                        <a href="<?= Url::toRoute(['/site/signup']) ?>" class="btn btn-primary"><?= Yii::t('app', 'Registration') ?></a>
                        <?php } else { ?>
                            <a href="<?= Url::toRoute(['/site/cabinet']) ?>" class="btn btn-primary"><?= Yii::$app->user->identity->firstname ?> <?= Yii::$app->user->identity->lastname ?></a>
                            <a href="<?= Url::toRoute(['/site/logout']) ?>" class="btn btn-primary"><?= Yii::t('app', 'Logout') ?></a>
                        <?php } ?>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-middle">
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-7">
            </div>
            <div class="col-xs-12 col-sm-6 col-md-5">
                <div class="header-middle-right">
                    <ul class="list-unstyled">
                        <li>
                            <a href="<?= Url::toRoute(['/']) ?>">
                                <span class="fa fa-cog" aria-hidden="true"></span>
                                <span class="fa-class"><?= Yii::t('app', 'Managment structure') ?></span>
                            </a>
                        </li>
                        <li>
                            <a href="<?= Url::toRoute(['/']) ?>">
                                <span class="fa fa-braille" aria-hidden="true"></span>
                                <span class="fa-class"><?= Yii::t('app', 'Methodical work') ?></span>
                            </a>
                        </li>
                        <li>
                            <a href="<?= Url::toRoute(['/']) ?>">
                                <span class="fa fa-map-marker" aria-hidden="true"></span>
                                <span class="fa-class"><?= Yii::t('app', 'Educational institutions') ?></span>
                            </a>
                        </li>
                        <li>
                            <a href="<?= Url::toRoute(['/']) ?>">
                                <span class="fa fa-pie-chart" aria-hidden="true"></span>
                                <span class="fa-class"><?= Yii::t('app', 'Microportions') ?></span>
                            </a>
                        </li>
                        <li>
                            <a href="<?= Url::toRoute(['/']) ?>">
                                <span class="fa fa-pie-chart" aria-hidden="true"></span>
                                <span class="fa-class"><?= Yii::t('app', 'Parameters cancel classes') ?></span>
                            </a>
                        </li>
                        <li>
                            <a href="<?= Url::toRoute(['/']) ?>">
                                <span class="fa fa-folder-open" aria-hidden="true"></span>
                                <span class="fa-class"><?= Yii::t('app', 'Regulations') ?></span>
                            </a>
                        </li>
                        <li>
                            <a href="<?= Url::toRoute(['/']) ?>">
                                <span class="fa fa-sun-o" aria-hidden="true"></span>
                                <span class="fa-class"><?= Yii::t('app', 'state symbols') ?></span>
                            </a>
                        </li>
                        <li>
                            <a href="<?= Url::toRoute(['/']) ?>">
                                <span class="fa fa-buysellads" aria-hidden="true"></span>
                                <span class="fa-class"><?= Yii::t('app', 'Acquisition in preschool') ?></span>
                            </a>
                        </li>
                        <li>
                            <a href="<?= Url::toRoute(['/']) ?>">
                                <span class="fa fa-exclamation-triangle" aria-hidden="true"></span>
                                <span class="fa-class"><?= Yii::t('app', 'Attention') ?></span>
                            </a>
                        </li>
                        <li>
                            <a href="<?= Url::toRoute(['/']) ?>">
                                <span class="fa fa-comment" aria-hidden="true"></span>
                                <span class="fa-class"><?= Yii::t('app', 'Appeals') ?></span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="header-bottom">
    <div class="row">
        <div class="col-xs-12">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li><a href="<?= Url::toRoute(['/']) ?>"><?= Yii::t('app', 'Message from the President') ?></a></li>
                            <li><a href="<?= Url::toRoute(['/']) ?>"><?= Yii::t('app', 'Useful links') ?></a></li>
                            <li><a href="<?= Url::toRoute(['/']) ?>"><?= Yii::t('app', 'Feedback') ?></a></li>
                            <li><a href="<?= Url::toRoute(['/']) ?>"><?= Yii::t('app', 'State symbols') ?></a></li>
                        </ul>
                        <div class="header-search">
                            <div class="form-group col-lg-3">
                                <div class="form-group has-feedback">
                                    <input type="text" class="form-control" id="inputValidation" placeholder="Поиск"/>
                                    <span class="fa fa-search form-control-feedback"></span>
                                </div>
                            </div>
                        </div>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
            </nav>
        </div>
    </div>
</div>