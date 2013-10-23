Kvar.SitesIndexRoute = Ember.Route.extend
  model: -> Kvar.Site.find()
  setupController: (controller, model) ->
    controller.set('title', "My App")
    controller.set('model', model);

