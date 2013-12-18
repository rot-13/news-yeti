Kvar.LikeButton = Ember.View.extend
  templateName: 'like-button'
  didInsertElement: ->
    @.$().find(".fb-like").attr('data-href', window.location.href)
    FB.XFBML.parse() if FB?