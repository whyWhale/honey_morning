package com.sf.honeymorning.brief.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sf.honeymorning.brief.entity.Word;

public interface WordRepository extends JpaRepository<Word, Long> {
	Boolean existsByWord(String word);

	Word findByWord(String word);
}
