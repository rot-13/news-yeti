Kvar.TweetButton = Ember.View.extend
  templateName: 'tweet-button'
  didInsertElement: ->
    twttr.widgets.load() if twttr?