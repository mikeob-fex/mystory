Ext.application({
    name: 'App',    
    appFolder: 'js/app',
    
    requires: ['App.maps.GoogleMap'],
     
    launch: function() {
    	this.createTimeline();    	
    	App.maps.GoogleMap.createPreview();
    },
           
    createTimeline: function(json){    		
    	var config = {
			width : "98%",
			height : "98%",
			source : 'http://localhost:8081/storify-read-service/timelines/breen/data.jsonp'
		};				
		createStoryJS(config);
    }      
    
    
});