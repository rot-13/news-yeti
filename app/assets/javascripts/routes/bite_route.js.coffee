Kvar.BiteRoute = Ember.Route.extend
  model: (p) -> @get('store').find('newsBite', p.url)
  activate: ->
    $(document).attr('title', "News Yeti")
