
window.randomize = function() {
  $('.ko-progress-circle').attr('data-progress', Math.floor(Math.random() * 100));
}
setTimeout(window.randomize, 200);
$('.ko-progress-circle').click(window.randomize);

export { setTimeout };
