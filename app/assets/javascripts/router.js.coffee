# For more information see: http://emberjs.com/guides/routing/

Kvar.Router.map ->
  @route 'about'
  @resource 'new_bite', path: '/new'
  @resource 'bite', path: '/y/:url'
  @resource 'edit_bite', path: '/y/:url/edit'

Kvar.AboutRoute = Ember.Route.extend
  setupController: (controller) ->
    controller.set('title', "My App")

