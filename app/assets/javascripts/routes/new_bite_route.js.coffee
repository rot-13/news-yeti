Kvar.NewBiteRoute = Ember.Route.extend
  model: -> Kvar.NewsBite.createRecord(topText: 'Have you thought about something funny to write?', centerText: "NO.")

  actions:
    submitAction: (newsBite) ->
      newsBite.save().then( (savedItem) =>
        @transitionTo 'bite', savedItem
      )