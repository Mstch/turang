package com.maoning.turang.web;

import com.maoning.turang.domain.Warning;
import com.maoning.turang.domain.WarningRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author tiddar
 */
@RestController
@RequestMapping("/warning")
public class WarningController {

    @Autowired
    WarningRepo warningRepo;


    @GetMapping("")
    public Page<Warning> list(Warning warning, int page) {
        Pageable pageable = PageRequest.of(page, 6, new Sort(Sort.Direction.DESC, "id"));
        return warningRepo.findAll(Example.of(warning), pageable);
    }

    @PostMapping("")
    public void deal(Warning warning) {
        warningRepo.saveAndFlush(warning);
    }


    @GetMapping("/count")
    public long count() {
        Warning warning = new Warning();
        warning.setDeal(false);
        return warningRepo.count(Example.of(warning));
    }
}
