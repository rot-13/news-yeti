Kvar.BiteRoute = Ember.Route.extend
  model: (p) -> @get('store').find('newsBite', p.url)
  activate: ->
    $(document).attr('title', @modelFor('bite').get('topText') + " - News Yeti")
    Kvar.set('currentPath', 'bite')
    ga('send', 'pageview') if ga?

  actions:
    editAction: (newsBite) ->
      @transitionTo 'edit_bite', newsBite

