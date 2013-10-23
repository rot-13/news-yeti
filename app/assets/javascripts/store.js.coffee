# http://emberjs.com/guides/models/defining-a-store/

Kvar.ApplicationAdapter = DS.RESTAdapter.extend
  namespace: 'api'

Kvar.Store = DS.Store.extend
  revision: 11
  adapter: Kvar.ApplicationAdapter.create()
