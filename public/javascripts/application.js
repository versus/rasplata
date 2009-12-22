if (typeof(console) == 'undefined') {
  console = {
    log: function(message) { /*alert(message);*/ }
  };
}
jQuery.fn.fadeToggle = function(speed, easing, callback) { 
   return this.animate({opacity: 'toggle'}, speed, easing, callback); 
}; 

