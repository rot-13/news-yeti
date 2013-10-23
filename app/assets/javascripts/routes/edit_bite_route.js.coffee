Kvar.EditBiteRoute = Ember.Route.extend
  model: (p) -> @get('store').find('newsBite', p.url);

  actions:
    submitAction: (newsBite) ->
      newsBite.save().then( (savedItem) =>
        @transitionTo 'bite', savedItem
      )