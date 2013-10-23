Kvar.BiteRoute = Ember.Route.extend
  model: (p) -> @get('store').find('newsBite', p.url);