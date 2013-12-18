Kvar.BiteRoute = Ember.Route.extend
  model: (p) -> @get('store').find('newsBite', p.url)
  activate: ->
    $(document).attr('title', @modelFor('bite').get('topText') + " - News Yeti")
    ga('send', 'pageview') if ga?
