package com.sf.honeymorning.domain.tag.repository;

import com.sf.honeymorning.domain.tag.entity.Tag;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface TagRepository extends JpaRepository<Tag, Long> {

    @Query("SELECT t FROM Tag t WHERE t.word = :word")
    Tag findTagByWord(@Param("word") String word);

}
