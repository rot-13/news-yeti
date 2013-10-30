# For more information see: http://emberjs.com/guides/routing/

Kvar.Router.reopen(
  location: 'history'
)

Kvar.Router.map ->
  @route 'about'
  @resource 'bite', path: '/:url'
  @resource 'edit_bite', path: '/:url/edit'

Kvar.AboutRoute = Ember.Route.extend
  setupController: (controller) ->
    controller.set('title', "My App")

