addEventListener('load', function() { setTimeout(hideURLbar, 0); }, false);
  function hideURLbar(){ window.scrollTo(0,1); }

$(function(){
  $('#audio-player').mediaelementplayer({
  alwaysShowControls: true,
  features: ['playpause','progress','volume'],
  audioVolume: 'horizontal',
  iPadUseNativeControls: true,
  iPhoneUseNativeControls: true,
  AndroidUseNativeControls: true
  });
});

$(document).on('turbolinks:load', function() {
  new UISearch(document.getElementById('sb-search'));
});
