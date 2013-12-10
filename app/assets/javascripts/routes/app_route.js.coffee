Kvar.AppRoute = Ember.Route.extend
  renderTemplate: (controller, model) ->
    this.render()

    pageTitle = if this.title then this.title controller, model else null
    document.title = if pageTitle then "#{pageTitle} | News Yeti" else "News Yeti"
    return