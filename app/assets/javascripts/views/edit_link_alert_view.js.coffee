Kvar.EditLinkView = Ember.View.extend
  templateName: 'edit_link_alert'
  actions:
    hide: ->
      @.set('isVisible', false)
