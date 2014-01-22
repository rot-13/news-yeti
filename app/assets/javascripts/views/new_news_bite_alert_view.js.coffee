Kvar.NewNewsBiteView = Ember.View.extend
  templateName: 'new_news_bite_alert'
  actions:
    hide: ->
      @.set('isVisible', false)
