Ext.define('App.timeline.Loader', {

	extend : 'Ext.util.Observable',
	
	statics: {
		
		init: function(){
			var loader = App.timeline.Loader.create();
			loader.createStoryJS();
			loader.pollForReady();
			return loader;
		}
	
	},
	
	constructor: function(){
		this.callParent();			
	},
	
	initEvents: function(){
		this.addEvents('ready');
		this.callParent();
	},
	
	pollForReady: function(){				
		if(window['VMM'] == undefined)  {
			Ext.defer(this.pollForReady, 200, this);
			return;
		}		
		this.fireEvent('ready', this);				
	},	
	
	createStoryJS: function(){
		var config = {
			width : "98%",
			height : "98%",
			debug : true,
			source : 'http://localhost:8081/storify-read-service/timelines/breen/data.jsonp'
		};		
		createStoryJS(config);		
	}
	
});