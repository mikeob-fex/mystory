// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.fsg.genealogy.timeline.builder;

import com.fsg.genealogy.timeline.builder.Timeline;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;

privileged aspect Timeline_Roo_Equals {
    
    public boolean Timeline.equals(Object obj) {
        if (!(obj instanceof Timeline)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        Timeline rhs = (Timeline) obj;
        return new EqualsBuilder().append(timeline, rhs.timeline).isEquals();
    }
    
    public int Timeline.hashCode() {
        return new HashCodeBuilder().append(timeline).toHashCode();
    }
    
}
