Kvar.NewsBite = DS.Model.extend
  url: DS.attr 'string'
  topText: DS.attr 'string'
  centerText: DS.attr 'string'
  edit_url: DS.attr 'string'

  primaryKey: 'url'