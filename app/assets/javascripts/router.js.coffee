# For more information see: http://emberjs.com/guides/routing/


Kvar.Router.map ->
  @resource 'sites', ->
    @resource 'site', path: '/:site_id', ->
      @route 'edit'
    @route 'new'

  @route("about")

Kvar.AboutRoute = Ember.Route.extend
  setupController: (controller) ->
    controller.set('title', "My App")

