Kvar.IndexRoute = Ember.Route.extend
  model: -> Kvar.NewsBite.createRecord(@randomText())

  activate: ->
    ga('send', 'pageview') if ga?

  actions:
    submitAction: (newsBite) ->
      newsBite.save().then( (savedItem) =>
        @transitionTo 'bite', savedItem
        Ember.$.getJSON("/api/news_bites/#{savedItem.get('url')}/create_image")
      )

    randomize: (newsBite) ->
      newsBite.setProperties(@randomText())


  randomText: ->
    @allTexts()[Math.floor(Math.random() * @allTexts().length)]

  allTexts: ->
    [
      {topText: Ember.I18n.t("welcome.demobites.1.q"), centerText: Ember.I18n.t("welcome.demobites.1.a")},
      {topText: Ember.I18n.t("welcome.demobites.2.q"), centerText: Ember.I18n.t("welcome.demobites.2.a")},
      {topText: Ember.I18n.t("welcome.demobites.3.q"), centerText: Ember.I18n.t("welcome.demobites.3.a")},
      {topText: Ember.I18n.t("welcome.demobites.4.q"), centerText: Ember.I18n.t("welcome.demobites.4.a")},
    ]
