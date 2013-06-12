// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.fsg.genealogy.timeline.builder;

import com.fsg.genealogy.timeline.builder.Timeline;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Timeline_Roo_Json {
    
    public String Timeline.toJson() {
        return new JSONSerializer().exclude("*.class").deepSerialize(this);
    }
    
    public static Timeline Timeline.fromJsonToTimeline(String json) {
        return new JSONDeserializer<Timeline>().use(null, Timeline.class).deserialize(json);
    }
    
    public static String Timeline.toJsonArray(Collection<Timeline> collection) {
        return new JSONSerializer().exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<Timeline> Timeline.fromJsonArrayToTimelines(String json) {
        return new JSONDeserializer<List<Timeline>>().use(null, ArrayList.class).use("values", Timeline.class).deserialize(json);
    }
    
}
