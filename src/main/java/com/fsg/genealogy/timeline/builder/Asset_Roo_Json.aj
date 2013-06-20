// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.fsg.genealogy.timeline.builder;

import com.fsg.genealogy.timeline.builder.Asset;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Asset_Roo_Json {
    
    public String Asset.toJsonExcludeNulls() {
        return new JSONSerializer().exclude("*.class").deepSerialize(this);
    }
    
    public static Asset Asset.fromJsonToAsset(String json) {
        return new JSONDeserializer<Asset>().use(null, Asset.class).deserialize(json);
    }
    
    public static String Asset.toJsonArray(Collection<Asset> collection) {
        return new JSONSerializer().exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<Asset> Asset.fromJsonArrayToAssets(String json) {
        return new JSONDeserializer<List<Asset>>().use(null, ArrayList.class).use("values", Asset.class).deserialize(json);
    }
    
}
