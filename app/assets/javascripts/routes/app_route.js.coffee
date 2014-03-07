Kvar.ApplicationRoute = Ember.Route.extend
  renderTemplate: (controller, model) ->
    this.render()

    pageTitle = if this.title then this.title controller, model else null
    document.title = if pageTitle then "#{pageTitle} | News Yeti" else "News Yeti"
    return

  beforeModel: ->
    Ember.I18n.translations = if (language == 'he') then he else en
    $("body").css({direction:if (language == 'he') then 'rtl' else 'ltr' })
