Ember.ContenteditableView = Ember.View.extend({
	tagName: 'div',
    attributeBindings: ['contenteditable', 'dir'],

	// Variables:
    editable: true,
    dir: 'auto',
	isUserTyping: false,
	plaintext: true,

    // Properties:
    contenteditable: (function() {
        var editable = this.get('editable');
        return editable ? 'true' : undefined;
    }).property('editable'),

	// Observers:
	valueObserver: (function() {
		if (!this.get('isUserTyping') && this.get('value')) {
			return this.setContent();
		}
	}).observes('value'),

	// Events:
	didInsertElement: function() {
        var content = this.setContent();
        if (this.get('autofocus')){
            setEndOfContenteditable(this.get('element'));
        }
        return  content;
	},

	focusOut: function() {
		return this.set('isUserTyping', false);
	},

	keyDown: function(event) {
		if (!event.metaKey) {
			return this.set('isUserTyping', true);
		}
	},

	keyUp: function(event) {
		if (this.get('plaintext')) {
			return this.set('value', this.$().text());
		} else {
			return this.set('value', this.$().html());
		}
	},

	setContent: function() {
		return this.$().html(this.get('value'));
	}
});
