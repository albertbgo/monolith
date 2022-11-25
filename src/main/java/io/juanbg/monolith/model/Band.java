package io.juanbg.monolith.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDate;

@Entity(name = "bands")
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Band {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private long idBand;
    private String nameBand;
    private String genreBand;
    private String yearReleaseBand;
    private String descriptionBand;
    private String logoBand;
}
