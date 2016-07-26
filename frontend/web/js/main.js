$(document).ready(function() {

    $("#owl-demo").owlCarousel({

        // Most important owl features
        items: 6,
        itemsCustom: false,
        itemsDesktop: [1199, 6],
        itemsDesktopSmall: [980, 4],
        itemsTablet: [768, 2],
        itemsTabletSmall: true,
        itemsMobile: [479, 1],
        singleItem: false,
        itemsScaleUp: false,

        //Basic Speeds
        slideSpeed: 200,
        paginationSpeed: 800,
        rewindSpeed: 1000,

        //Autoplay
        autoPlay: true,
        stopOnHover: true,

        // Navigation
        navigation: false,
        navigationText: [ "<i class='glyphicon glyphicon-chevron-left'></i>",
            "<i class='glyphicon glyphicon-chevron-right'></i>"],
        rewindNav: true,
        scrollPerPage: false,

        //Pagination
        pagination: false,
        paginationNumbers: false


    });


});

