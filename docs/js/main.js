"user strict";
/*
====================== components =======================     
    1.Timer
    2.Smooth scroll
    3.Background-paralax
    4.Header sticky
    5.Mail function
    6.Loader JS
*/
/*-------------------------- 1.Timer --------------------------*/
function makeTimer() {
    var endTime = new Date("September 10, 2018 18:00:00 PDT");
    var endTime = (Date.parse(endTime)) / 1000;
    var now = new Date();
    var now = (Date.parse(now) / 1000);
    var timeLeft = endTime - now;
    var days = Math.floor(timeLeft / 86400);
    var hours = Math.floor((timeLeft - (days * 86400)) / 3600);
    var minutes = Math.floor((timeLeft - (days * 86400) - (hours * 3600)) / 60);
    var seconds = Math.floor((timeLeft - (days * 86400) - (hours * 3600) - (minutes * 60)));
    if (days < "10") {
        days = "0" + days;
    }
    if (hours < "10") {
        hours = "0" + hours;
    }
    if (minutes < "10") {
        minutes = "0" + minutes;
    }
    if (seconds < "10") {
        seconds = "0" + seconds;
    }
    $(".days").html(days + "<span>Days</span>");
    $(".hours").html(hours + "<span>Hours</span>");
    $(".minutes").html(minutes + "<span>Minutes</span>");
    $(".seconds").html(seconds + "<span>Seconds</span>");
}
setInterval(function() {
    makeTimer();
}, 1000);
var NavBar = $('.navbar ');
/*---------Timer-end-----------*/

/*---------auto-play video-----------*/
autoPlayYouTubeModal();

//FUNCTION TO GET AND AUTO PLAY YOUTUBE VIDEO FROM DATATAG
function autoPlayYouTubeModal() {
    var trigger = $("body").find('[data-toggle="modal"]');
    trigger.click(function () {
        var theModal = $(this).data("target"),
            videoSRC = $(this).attr("data-theVideo"),
            videoSRCauto = videoSRC + "?autoplay=1";
        $(theModal + ' iframe').attr('src', videoSRCauto);
        $(theModal + ' button.close').click(function () {
            $(theModal + ' iframe').attr('src', videoSRC);
            // console.log('fire1');
        });
        $('#videoModal').on('hide.bs.modal', function (e) {
            $(theModal + ' iframe').attr('src', videoSRC);
            // console.log('fire2');
          })
        
    });
}
/*------------------------------------- 2.Smooth scroll --------------------------------*/
$(document).ready(function() {
    $('.redirect-btn, .navbar a').on('click', function(event) {
        event.preventDefault();
        var target = $(this.hash);
        if ($(window).width() < 992) {
            $('body,html').animate({
                'scrollTop': target.offset().top - 68
            }, 400);
        } else {
            $('body,html').animate({
                'scrollTop': target.offset().top - 80
            }, 400);
        }
        $('.navbar-collapse').removeClass('in');
        $('.navbar-toggle').addClass('collapsed');
    });
    /*-------- Smooth scroll-end -----------*/

    /*----------------------------- 3.Background-paralax ---------------------------*/
    $(window).scroll(function(e) {
        parallax();
    });

    function parallax() {
        var scrolled = $(window).scrollTop();
        $('.parallax').css('background-position-y', -(scrolled * 0.2) + 'px');
    } /*--------- Background-paralax-end ----------*/

    /*------------------------------- 4.Header sticky -------------------------*/
    // Hide Header on on scroll down
    var didScroll;
    var lastScrollTop = 0;
    var navbarHeight = NavBar.outerHeight();
    $(window).scroll(function(event) {
        didScroll = true;
    });
    setInterval(function() {
        if (didScroll) {
            hasScrolled();
            didScroll = false;
        }
    }, 100);

    function hasScrolled() {
        var st = $(this).scrollTop();
        if (st + $(window).height() < $(document).height()) {
            NavBar.addClass('sticky-header');
            if (st == 0) {
                NavBar.removeClass('sticky-header');
            }
        }
        lastScrollTop = st;
    }
});

/*------------ Hader sticky-end  -------*/

/*--------------------------------- 5.Mail Fucntion -------------------------------*/
$(function() {
    var form = $('#ajax-contact');
    var formMessages = $('#form-messages');
    $(form).submit(function(e) {
        e.preventDefault();
        var formData = $(form).serialize();
        $.ajax({
                type: 'POST',
                url: $(form).attr('action'),
                data: formData
            })
            .done(function(response) {
                $(formMessages).removeClass('error');
                $(formMessages).addClass('success');
                $(formMessages).text(response);
                $('#first_name').val('');
                $('#last_name').val('');
                $('#email').val('');
                $('#message').val('');
            })
            .fail(function(data) {
                $(formMessages).removeClass('success');
                $(formMessages).addClass('error');
                if (data.responseText !== '') {
                    $(formMessages).text(data.responseText);
                } else {
                    $(formMessages).text('Oops! An error occured and your message could not be sent.');
                }
            });
    });

    var form1 = $('#subscribe_now');
    var mailMessages = $('#mail-messages');
    $(form1).submit(function(e) {
        e.preventDefault();
        var formData = $(form1).serialize();
        $.ajax({
                type: 'POST',
                url: $(form1).attr('action'),
                data: formData
            })
            .done(function(response) {
                $(mailMessages).removeClass('error');
                $(mailMessages).addClass('success');
                $(mailMessages).text(response);
                $('#email').val('');
            })
            .fail(function(data) {
                $(mailMessages).removeClass('success');
                $(mailMessages).addClass('error');
                if (data.responseText !== '') {
                    $(mailMessages).text(data.responseText);
                } else {
                    $(mailMessages).text('Oops! An error occured and your message could not be sent.');
                }
            });
    });
});
/* -------------- Mail function-end ----------*/
$(document).ready(function($) {
    /*----------------------- 6.Loader JS -------------------*/
    $('.site-loader').fadeOut(600);
});

