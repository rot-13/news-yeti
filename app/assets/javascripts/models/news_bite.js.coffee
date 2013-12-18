Kvar.NewsBite = DS.Model.extend
  url: DS.attr 'string'
  topText: DS.attr 'string'
  centerText: DS.attr 'string'
  edit_url: DS.attr 'string'
  edit_url_unescaped: (-> decodeURIComponent(@get('edit_url'))).property('get_url')
  mailto: (-> "mailto:newsyeti@mail.com?subject=Edit URL for '" + @get('topText') + "'&body=" + @get('edit_url')).
  property('topText','edit_url')

  primaryKey: 'url'