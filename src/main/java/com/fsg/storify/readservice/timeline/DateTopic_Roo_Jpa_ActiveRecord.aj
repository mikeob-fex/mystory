// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.fsg.storify.readservice.timeline;

import com.fsg.storify.readservice.timeline.DateTopic;
import java.util.List;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DateTopic_Roo_Jpa_ActiveRecord {
    
    public static long DateTopic.countDateTopics() {
        return entityManager().createQuery("SELECT COUNT(o) FROM DateTopic o", Long.class).getSingleResult();
    }
    
    public static List<DateTopic> DateTopic.findAllDateTopics() {
        return entityManager().createQuery("SELECT o FROM DateTopic o", DateTopic.class).getResultList();
    }
    
    public static DateTopic DateTopic.findDateTopic(Long id) {
        if (id == null) return null;
        return entityManager().find(DateTopic.class, id);
    }
    
    public static List<DateTopic> DateTopic.findDateTopicEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM DateTopic o", DateTopic.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public DateTopic DateTopic.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        DateTopic merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
