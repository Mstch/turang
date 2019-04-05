package com.maoning.turang.domain;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @author tiddar
 */
@Repository
public interface TurangRepo extends JpaRepository<Turang,Long> {
}
