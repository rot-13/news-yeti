Kvar.SitesNewRoute = Ember.Route.extend
  model: -> Kvar.Site.createRecord(topText: 'האם זה עובד?', centerText: "כן!")