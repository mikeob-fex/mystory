// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.fsg.storify.readservice.timeline;

import com.fsg.storify.readservice.timeline.Family;
import com.fsg.storify.readservice.timeline.Timeline;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Timeline_Roo_Finder {
    
    public static TypedQuery<Timeline> Timeline.findTimelinesByFamily(Family family) {
        if (family == null) throw new IllegalArgumentException("The family argument is required");
        EntityManager em = Timeline.entityManager();
        TypedQuery<Timeline> q = em.createQuery("SELECT o FROM Timeline AS o WHERE o.family = :family", Timeline.class);
        q.setParameter("family", family);
        return q;
    }
    
}
