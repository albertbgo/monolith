package io.juanbg.monolith.service;

import io.juanbg.monolith.model.Band;
import io.juanbg.monolith.repository.BandRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BandServiceImpl implements BandService {


    @Autowired
    private BandRepository bandRepo;

    @Override public List<Band> getAllBands()
    {
        return bandRepo.findAll();
    }

    @Override public void save(Band employee)
    {
        bandRepo.save(employee);
    }

    @Override public Band getById(Long id)
    {
        Optional<Band> optional = bandRepo.findById(id);
        Band employee = null;
        if (optional.isPresent())
            employee = optional.get();
        else
            throw new RuntimeException(
                    "Band not found for id : " + id);
        return employee;
    }

    @Override public void deleteViaId(long id)
    {
        bandRepo.deleteById(id);
    }
}
