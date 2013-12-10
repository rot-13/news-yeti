Kvar.LikeButton = Ember.View.extend
  templateName: 'like-button'
  didInsertElement: ->
    @.$().attr('data-href', window.location.href)