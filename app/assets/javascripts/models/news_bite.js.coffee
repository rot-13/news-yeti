Kvar.NewsBite = DS.Model.extend
  url: DS.attr 'string'
  topText: DS.attr 'string'
  centerText: DS.attr 'string'

  primaryKey: 'url'