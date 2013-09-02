// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.fsg.genealogy.timeline.builder;

import com.fsg.genealogy.timeline.builder.Title;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;

privileged aspect Title_Roo_Equals {
    
    public boolean Title.equals(Object obj) {
        if (!(obj instanceof Title)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        Title rhs = (Title) obj;
        return new EqualsBuilder().append(asset, rhs.asset).append(classname, rhs.classname).append(endDate, rhs.endDate).append(headline, rhs.headline).append(startDate, rhs.startDate).append(text, rhs.text).append(type, rhs.type).isEquals();
    }
    
    public int Title.hashCode() {
        return new HashCodeBuilder().append(asset).append(classname).append(endDate).append(headline).append(startDate).append(text).append(type).toHashCode();
    }
    
}