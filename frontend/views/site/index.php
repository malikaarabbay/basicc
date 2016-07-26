<?php
/* @var $this yii\web\View */
$this->title = 'Yii2CMS';
use yii\helpers\Html;
use yii\helpers\Url;

?>

<div class="row">
    <div class="col-xs-12 col-sm-2 col-md-2">
        <div class="block">
            <div class="left-menu">
                <ul class="list-unstyled">
                    <li>
                        <a href="">
                            <span class="fa fa-file-text-o" aria-hidden="true"></span>
                            <span class="fa-class">Государственные закупки</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="fa fa-university" aria-hidden="true"></span>
                            <span class="fa-class">Государственные услуги</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="fa fa-flag" aria-hidden="true"></span>
                            <span class="fa-class">Государственный</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="fa fa-briefcase" aria-hidden="true"></span>
                            <span class="fa-class">Вакансии</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="fa fa-book" aria-hidden="true"></span>
                            <span class="fa-class">ЕНТ</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="fa fa-certificate" aria-hidden="true"></span>
                            <span class="fa-class">Меценат</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="fa fa-trophy" aria-hidden="true"></span>
                            <span class="fa-class">Конкурсы</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="fa fa-cubes" aria-hidden="true"></span>
                            <span class="fa-class">Олимпиады</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="fa fa-users" aria-hidden="true"></span>
                            <span class="fa-class">Сообщества</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="fa fa-file-o" aria-hidden="true"></span>
                            <span class="fa-class">Памятка</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="fa fa-camera" aria-hidden="true"></span>
                            <span class="fa-class">Медиагалерея</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="col-xs-12 col-sm-10 col-md-10">
        <div class="block">
            <div class="row">
                <div class="col-xs-12 col-sm-3 col-md-3">
                    <div class="block-item">
                        <div class="block-item-title">Просмотр очереди в детский сад</div>
                        <img class="img-responsive" src="img/2107.jpg" alt=""/>
                        <a class="btn btn-block btn-more" href="">Подробнее</a>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-3 col-md-3">
                    <div class="block-item">
                        <div class="block-item-title">Блог руководителя</div>
                        <img class="img-responsive" src="img/2107.jpg" alt=""/>
                        <a class="btn btn-block btn-more" href="">Подробнее</a>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-3 col-md-3">
                    <div class="block-item">
                        <div class="block-item-title">Инфографика</div>
                        <div id="carousel-info" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-info" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-info" data-slide-to="1"></li>
                            </ol>

                            <!-- Wrapper for slides -->
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img class="img-responsive" src="img/2107.jpg" alt=""/>
                                    <div class="carousel-caption">
                                        <p>Единое Национальное Тестирование (ЕНТ) - система оценки знаний выпускников, применяемая в Республике Казахстан.</p>
                                        <a class="btn btn-block btn-more" href="">Подробнее</a>
                                    </div>
                                </div>
                                <div class="item">
                                    <img class="img-responsive" src="img/2107.jpg" alt=""/>
                                    <div class="carousel-caption">
                                        <p>Единое Национальное Тестирование (ЕНТ) - система оценки знаний выпускников, применяемая в Республике Казахстан.</p>
                                        <a class="btn btn-block btn-more" href="">Подробнее</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-3 col-md-3">
                    <div class="block-item">
                        <div class="block-item-title">Вебинар</div>
                        <div id="carousel-web" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-web" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-web" data-slide-to="1"></li>
                            </ol>

                            <!-- Wrapper for slides -->
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img class="img-responsive" src="img/2107.jpg" alt=""/>
                                    <div class="carousel-caption">
                                        <p>Вебинары могут быть совместными и включать в себя сеансы голосований и опросов, что обеспечивает полное</p>
                                        <a class="btn btn-block btn-more" href="">Присоединиться</a>
                                    </div>
                                </div>
                                <div class="item">
                                    <img class="img-responsive" src="img/2107.jpg" alt=""/>
                                    <div class="carousel-caption">
                                        <p>Вебинары могут быть совместными и включать в себя сеансы голосований и опросов, что обеспечивает полное</p>
                                        <a class="btn btn-block btn-more" href="">Присоединиться</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="">
            <div class="row">
                <div class="col-xs-12 col-sm-3 col-md-3">
                    <div class="publish">
                        <div class="publish-title">обявления</div>
                        <div class="publish-main"><a href="">17 июня в Алматы состоится торжественное мероприятие «Жат тулек-2016»</a></div>
                        <div class="publish-next"><a href="">С 11 июня 2016 года в Алматы в схеме движения автотранспорта по пересечению пр. Рыскулова-ул. Спина внесены некоторые изменения</a></div>
                    </div>
                    <div class="publish">
                        <div class="publish-title">Обявления</div>
                        <div class="publish-item">
                            <a href="">Посвещенной Дню защиты детей, Посвещенной Дню защиты детей!</a>
                            <a class="btn btn-block btn-more" href="">Подробнее</a>
                        </div>
                    </div>
                    <div class="publish">
                        <div class="publish-item">
                            <a href="">Посвещенной Дню защиты детей, Посвещенной Дню защиты детей!</a>
                            <a class="btn btn-block btn-more" href="">Подробнее</a>
                        </div>
                    </div>
                    <div class="publish">
                        <div class="publish-item">
                            <a href="">Посвещенной Дню защиты детей, Посвещенной Дню защиты детей!</a>
                            <a class="btn btn-block btn-more" href="">Подробнее</a>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-9 col-md-9">
                    <div class="block">
                        <div class="row">
                            <div class="col-xs-12"><div class="block-title">Новости</div></div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-4 col-md-4">
                                <div class="news-item">
                                    <a href="">
                                    <img height="285" class="img-responsive" src="img/2107.jpg" alt=""/>
                                    <div class="news-info">
                                        <div class="news-item-date">4 июня 2016</div>
                                        <div class="news-item-title">1000-летний Алматы принимает участников IV этнофес</div>
                                    </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-4 col-md-4">
                                <div class="news-item">
                                    <a href="">
                                        <img height="285" class="img-responsive" src="img/2107.jpg" alt=""/>
                                        <div class="news-info">
                                            <div class="news-item-date">4 июня 2016</div>
                                            <div class="news-item-title">1000-летний Алматы принимает участников IV этнофес</div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-4 col-md-4">
                                <div class="news-item">
                                    <a href="">
                                        <img height="285" class="img-responsive" src="img/2107.jpg" alt=""/>
                                        <div class="news-info">
                                            <div class="news-item-date">4 июня 2016</div>
                                            <div class="news-item-title">1000-летний Алматы принимает участников IV этнофес</div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-4 col-md-4">
                                <div class="news-item">
                                    <a href="">
                                        <img height="285" class="img-responsive" src="img/2107.jpg" alt=""/>
                                        <div class="news-info">
                                            <div class="news-item-date">4 июня 2016</div>
                                            <div class="news-item-title">1000-летний Алматы принимает участников IV этнофес</div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-4 col-md-4">
                                <div class="news-item">
                                    <a href="">
                                        <img height="285" class="img-responsive" src="img/2107.jpg" alt=""/>
                                        <div class="news-info">
                                            <div class="news-item-date">4 июня 2016</div>
                                            <div class="news-item-title">1000-летний Алматы принимает участников IV этнофес</div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-4 col-md-4">
                                <div class="news-item">
                                    <a href="">
                                        <img height="285" class="img-responsive" src="img/2107.jpg" alt=""/>
                                        <div class="news-info">
                                            <div class="news-item-date">4 июня 2016</div>
                                            <div class="news-item-title">1000-летний Алматы принимает участников IV этнофес</div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-4 col-md-4">
                                <div class="news-item">
                                    <a href="">
                                        <img height="285" class="img-responsive" src="img/2107.jpg" alt=""/>
                                        <div class="news-info">
                                            <div class="news-item-date">4 июня 2016</div>
                                            <div class="news-item-title">1000-летний Алматы принимает участников IV этнофес</div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-4 col-md-4">
                                <div class="news-item">
                                    <a href="">
                                        <img height="285" class="img-responsive" src="img/2107.jpg" alt=""/>
                                        <div class="news-info">
                                            <div class="news-item-date">4 июня 2016</div>
                                            <div class="news-item-title">1000-летний Алматы принимает участников IV этнофес</div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-4 col-md-4">
                                <div class="news-item">
                                    <a href="">
                                        <img height="285" class="img-responsive" src="img/2107.jpg" alt=""/>
                                        <div class="news-info">
                                            <div class="news-item-date">4 июня 2016</div>
                                            <div class="news-item-title">1000-летний Алматы принимает участников IV этнофес</div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

