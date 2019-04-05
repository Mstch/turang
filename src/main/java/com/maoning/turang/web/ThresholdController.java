package com.maoning.turang.web;


import com.maoning.turang.domain.Threshold;
import com.maoning.turang.domain.ThresholdRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author tiddar
 */
@RestController
@RequestMapping("/threshold")
public class ThresholdController {

    @Autowired
    ThresholdRepo thresholdRepo;

    @GetMapping("")
    public  Threshold  findAll(){
        return thresholdRepo.findAll().get(0);
    }

    @PostMapping("")
    public void update(Threshold threshold){
        thresholdRepo.saveAndFlush(threshold);
    }


}
