/** Document Ready Functions **/
/********************************************************************/

$( document ).ready(function() {
    scaleVideoContainer();

    initBannerVideoSize('.video-container .poster img');
    initBannerVideoSize('.video-container .filter');
    initBannerVideoSize('.video-container video');

    $(window).on('resize', function() {
        scaleVideoContainer();
        scaleBannerVideoSize('.video-container .poster img');
        scaleBannerVideoSize('.video-container .filter');
        scaleBannerVideoSize('.video-container video');
    });

    var top = Math.round($(window).height()/100 * 35) - 80;

    $('.share-buttons-group').affix({
        offset: {
            top: top,
            bottom: 200
        }
    });
});

$(window).load(function() {
    $(".token.attr-value:contains('PATH_TO')").css('background-color', '#5965BB').children().css('background-color', '#272822');
});

/** Reusable Functions **/
/********************************************************************/

function scaleVideoContainer() {

    var height = $(window).height();
    var unitHeight = parseInt(height) + 'px';
    $('.homepage-hero-module').css('height',unitHeight);

}

function initBannerVideoSize(element){

    $(element).each(function(){
        $(this).data('height', $(this).height());
        $(this).data('width', $(this).width());
    });

    scaleBannerVideoSize(element);

}

function scaleBannerVideoSize(element){

    var windowWidth = $(window).width(),
        windowHeight = $(window).height(),
        videoWidth,
        videoHeight;

    console.log(windowHeight);

    $(element).each(function(){
        var videoAspectRatio = $(this).data('height')/$(this).data('width');

        $(this).width(windowWidth);

        if(windowWidth < 1000){
            videoHeight = windowHeight;
            videoWidth = videoHeight / videoAspectRatio;
            $(this).css({'margin-top' : 0, 'margin-left' : -(videoWidth - windowWidth) / 2 + 'px'});

            $(this).width(videoWidth).height(videoHeight);
        }

        $('.homepage-hero-module .video-container video').addClass('fadeIn animated');

    });
}

mixpanel.track('Coverr_PageView');

$('.grid').imagesLoaded( function() {
    // init Isotope after all images have loaded
    $('.grid').isotope({
        // options
        itemSelector: '.grid-item',
        layoutMode: 'fitRows'
    });
});

$(".grid-item").click(function(){
    var name = $(this).data('name');
    mixpanel.track('Video_Click', {'videoName': name});
});

$('#videoModal').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget); // Button that triggered the modal
    var video = button.data('video');
    var poster = button.data('poster');
    var title = button.data('title');

    var videoName = video.replace(".mp4", "");

    var zip = video.replace('mp4', 'zip');

    $("#loadingVideoSpinner").fadeIn('fast');

    var addrPrefix = "https://s3-us-west-2.amazonaws.com/coverr/";

    var modal = $(this);
    modal.find('.video-title').text(title);
    modal.find('source').attr('src', addrPrefix + "mp4/" + video);
    modal.find('video').attr('poster', addrPrefix + "poster/" + poster).load();
    modal.find('.btn-demo').data('video', video).attr('data-video', video);
    modal.find('.btn-demo').data('poster', poster).attr('data-poster', poster);
    modal.find('.btn-download').attr('href', addrPrefix + "zip/" + zip);
    modal.find('.btn-download').data('name', videoName).attr('data-name', videoName);

});

$(".btn-demo").click(function(){

    var video = $(this).data('video');
    var poster = $(this).data('poster');

    var poster = poster.replace("_thumb", "");

    var addrPrefix = "https://s3-us-west-2.amazonaws.com/coverr/";
    var zip = video.replace('mp4', 'zip');

    var videoName = video.replace(".mp4", "");

    $(".fillWidth").find('source').attr('src', addrPrefix + "mp4/" + video);
    $(".poster").find('img').attr('src', addrPrefix + "poster/" + poster);
    $(".fillWidth").attr('poster', addrPrefix + "poster/" + poster).load();

    $('#topDownloadButton').attr('href', addrPrefix + "zip/" + zip);
    $('#topDownloadButton').data('name', videoName).attr('data-name', videoName);
    $('#videoModal').modal('hide');
    $("html, body").animate({
        scrollTop: 0,
    }, 600, function () {
        $('#topDownloadButton').show();
    });

    mixpanel.track('Preview_Click', {'videoName': videoName});
});

$('.filter-button-group').on( 'click', 'button, a', function(e) {
    e.preventDefault();

    var filterValue = $(this).attr('data-filter');
    $('.grid').isotope({ filter: filterValue });
    $(".btn-filter-videos").removeClass('active');
    $(this).parent().addClass('active');
});

$("#videoModal").find('video').on('loadstart', function(){
    $("#loadingVideoSpinner").fadeIn('fast');
});

$("#videoModal").find('video').on('play playing', function(){
    $("#loadingVideoSpinner").fadeOut('fast');
});

$(".fillWidth").on('loadstart', function(){
    $("#loadBannerVideoSpinner").fadeIn('fast');
});

$(".fillWidth").on('play playing', function(){
    $("#loadBannerVideoSpinner").fadeOut('fast');
});



$(".btn-track").click(function(){
    var event = $(this).data('event');
    var location = $(this).data('location');
    mixpanel.track(event, {'location': location});
});

