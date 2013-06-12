$(document).ready(function() {
  $('.upvote').click(function() {
    path = '/vote/' + $(this).data('type') + '/' + $(this).data('id') + '/1';
    $.get(path);
    var points = $(this).parent().find('.points');
    var newPoints = parseInt(points.text()) + 1
    points.text(newPoints);
  });
  $('.downvote').click(function() {
    path = '/vote/' + $(this).data('type') + '/' + $(this).data('id') + '/0';
    $.get(path);
    var points = $(this).parent().find('.points');
    var newPoints = parseInt(points.text()) - 1
    points.text(newPoints);
  });
});
