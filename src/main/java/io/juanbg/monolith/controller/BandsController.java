package io.juanbg.monolith.controller;

import io.juanbg.monolith.model.Band;
import io.juanbg.monolith.service.BandService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("bands")
@Slf4j
public class BandsController {
    @Autowired
    private BandService bandServiceImpl;

    @GetMapping("/")
    public String viewHomePage(Model model) {
        model.addAttribute("allBandList", bandServiceImpl.getAllBands());
      log.info("***** DATA RECOVER " + model.getAttribute("allBandList"));
        return "index";
    }

    @GetMapping("/addnew")
    public String addNewBand(Model model) {
        Band band = new Band();
        model.addAttribute("band", band);
        return "newband";
    }

    @PostMapping("/save")
    public String saveBand(@ModelAttribute("band") Band band) {

        log.info("TO INSERT: ******");
        log.info(band.toString());

        bandServiceImpl.save(band);
        return "redirect:/bands/";
    }

    @GetMapping("/showFormForUpdate/{id}")
    public String updateForm(@PathVariable(value = "id") long id, Model model) {
        Band band = bandServiceImpl.getById(id);
        model.addAttribute("band", band);
        return "update";
    }

    @GetMapping("/deleteBand/{id}")
    public String deleteThroughId(@PathVariable(value = "id") long id) {
        bandServiceImpl.deleteViaId(id);
        return "redirect:/";

    }

}
