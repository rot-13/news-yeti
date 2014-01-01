Kvar.IndexRoute = Ember.Route.extend
  model: -> Kvar.NewsBite.createRecord(@randomText())

  activate: ->
    ga('send', 'pageview') if ga?

  actions:
    submitAction: (newsBite) ->
      newsBite.save().then( (savedItem) =>
        @transitionTo 'bite', savedItem
      )

    randomize: (newsBite) ->
      newsBite.setProperties(@randomText())


  randomText: ->
    @allTexts[Math.floor(Math.random() * @allTexts.length)]

  allTexts: [
    {topText: 'Have you thought about something funny to write?', centerText: "NO."},
    {topText: 'Have you ever used News Yeti?', centerText: "NO."},
    {topText: 'Is Half-Life 3 out yet?', centerText: "NO."},
    {topText: 'Is the Government shut down?', centerText: "YES."},
    {topText: 'What year is it?', centerText: "2014"},
    {topText: 'Ask your grandpa, can I have his hand-me-downs?', centerText: "No."},
    {topText: 'Is there life on mars?', centerText: "NO."},
    {topText: 'Where is my mind?', centerText: "..."},
    {topText: 'What\'s in the box?', centerText: ":)"},
    {topText: 'You want the truth?',  centerText: "YES."},
    {topText: 'Do i feel lucky? Well, do ya, punk?',  centerText: "NO."},
    {topText: 'You talkin\' to me?',  centerText: "NO."},
    {topText: 'Are you telling me you built a time machine? out of a delorian?',  centerText: "YES."},
    {topText: 'Is iPhone 6 out yet?',  centerText: "NO."},
    {topText: 'Is iPhone 5 out yet?',  centerText: "YES."},
    {topText: 'Is Fallout 4 out yet?',  centerText: "NO."},
  ]