package io.juanbg.monolith.repository;

import io.juanbg.monolith.model.Band;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface BandRepository extends JpaRepository<Band,Long> {

}
