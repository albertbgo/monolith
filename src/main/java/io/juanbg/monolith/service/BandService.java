package io.juanbg.monolith.service;

import io.juanbg.monolith.model.Band;

import java.util.List;

public interface BandService {
    List<Band> getAllBands();
    void save(Band employee);
    Band getById(Long id);
    void deleteViaId(long id);
}
