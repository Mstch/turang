package com.maoning.turang.domain;

import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @author tiddar
 */
@Repository
public interface WarningRepo  extends JpaRepository<Warning,Long> {

}
