Kvar.IndexRoute = Ember.Route.extend
  model: -> Kvar.NewsBite.createRecord(@randomText())

  activate: ->
    ga('send', 'pageview') if ga?

  actions:
    submitAction: (newsBite) ->
      newsBite.save().then( (savedItem) =>
        @transitionTo 'bite', savedItem
      )

  randomText: ->
    @allTexts[Math.floor(Math.random() * @allTexts.length)]

  allTexts: [
    {topText: 'Have you thought about something funny to write?', centerText: "NO."},
    {topText: 'Have you ever used News Yeti?', centerText: "NO."},
    {topText: 'Is Half-Life 3 out yet?', centerText: "NO."},
    {topText: 'Is the Government shut down?', centerText: "YES."},
    {topText: 'Did the dog eat poop today?', centerText: "YES!"},
  ]