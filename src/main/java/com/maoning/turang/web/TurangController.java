package com.maoning.turang.web;

import com.maoning.turang.domain.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.web.bind.annotation.*;

import java.util.Date;

/**
 * @author tiddar
 */
@RestController
@RequestMapping("/turang")
public class TurangController {

    @Autowired
    TurangRepo turangRepo;

    @Autowired
    ThresholdRepo thresholdRepo;

    @Autowired
    WarningRepo warningRepo;

    @GetMapping("")
    public Page<Turang> query(Turang turang, int page) {
        Pageable pageable = PageRequest.of(page, 10, new Sort(Sort.Direction.DESC, "id"));
        return turangRepo.findAll(Example.of(turang), pageable);
    }

    @PostMapping("")
    public Boolean save(Turang turang) {
        turangRepo.saveAndFlush(turang);
        Warning warning = new Warning();
        warning.setDeal(false);
        warning.setPosition(turang.getPosition());
        warning.setTime(new Date());
        if (check(turang, warning)) {
            warningRepo.saveAndFlush(warning);
            return true;
        }
        return false;
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id) {
        turangRepo.deleteById(id);
    }

    private Boolean check(Turang turang, Warning pwarning) {
        Boolean warning = false;
        Boolean bigWarning = false;
        StringBuilder stringBuilder = new StringBuilder("");
        Threshold threshold = thresholdRepo.findAll().get(0);
        try {
            if (threshold.getNearlyyouJiZhi() < turang.getYouJiZhi()) {
                if (threshold.getYouJiZhi() < turang.getYouJiZhi()) {
                    warning = true;
                    bigWarning = true;
                    stringBuilder.append("#有机质超标！,当前值为");
                    stringBuilder.append(turang.getYouJiZhi());
                } else {
                    warning = true;
                    stringBuilder.append("#有机质快要超标！,当前值为");
                    stringBuilder.append(turang.getYouJiZhi());
                }
            }
            if (threshold.getNearlyquanDan() < turang.getQuanDan()) {
                if (threshold.getQuanDan() < turang.getQuanDan()) {
                    warning = true;
                    bigWarning = true;
                    stringBuilder.append("#全氮超标！,当前值为");
                    stringBuilder.append(turang.getQuanDan());
                } else {
                    warning = true;
                    stringBuilder.append("#全氮快要超标！,当前值为");
                    stringBuilder.append(turang.getQuanDan());
                }
            }

            if (threshold.getNearlyhuanXiaoJia() < turang.getHuanXiaoJia()) {
                if (threshold.getHuanXiaoJia() < turang.getHuanXiaoJia()) {
                    warning = true;
                    bigWarning = true;
                    stringBuilder.append("#缓效钾超标！,当前值为");
                    stringBuilder.append(turang.getHuanXiaoJia());
                } else {
                    warning = true;
                    stringBuilder.append("#缓效钾快要超标！,当前值为");
                    stringBuilder.append(turang.getHuanXiaoJia());
                }
            }
            if (threshold.getNearlyjianJieDan() < turang.getJianJieDan()) {
                if (threshold.getJianJieDan() < turang.getJianJieDan()) {
                    warning = true;
                    bigWarning = true;
                    stringBuilder.append("#碱解氮超标！,当前值为:");
                    stringBuilder.append(turang.getJianJieDan());
                } else {
                    warning = true;
                    stringBuilder.append("#碱解氮快要超标！,当前值为:");
                    stringBuilder.append(turang.getJianJieDan());
                }
            }
            if (threshold.getNearlyPH() < turang.getPh()) {
                if (threshold.getPh() < turang.getPh()) {
                    warning = true;
                    bigWarning = true;
                    stringBuilder.append("#PH值超标！,当前值为");
                    stringBuilder.append(turang.getPh());
                } else {
                    warning = true;
                    stringBuilder.append("#PH值快要超标！,当前值为");
                    stringBuilder.append(turang.getPh());
                }
            }
            if (threshold.getNearlysuXiaoJia() < turang.getSuXiaoJia()) {

                if (threshold.getSuXiaoJia() < turang.getSuXiaoJia()) {
                    warning = true;
                    bigWarning = true;
                    stringBuilder.append("#速效钾超标！,当前值为");
                    stringBuilder.append(turang.getSuXiaoJia());
                } else {
                    warning = true;
                    stringBuilder.append("#速效钾快要超标！,当前值为");
                    stringBuilder.append(turang.getSuXiaoJia());
                }
            }
            if (threshold.getYouXiaoLin() < turang.getYouXiaoLin()) {
                if (threshold.getYouXiaoLin() < turang.getYouXiaoLin()) {
                    warning = true;
                    bigWarning = true;
                    stringBuilder.append("#有效磷超标！,当前值为");
                    stringBuilder.append(turang.getYouXiaoLin());
                } else {
                    warning = true;
                    stringBuilder.append("#有效磷快要超标！,当前值为");
                    stringBuilder.append(turang.getYouXiaoLin());
                }
            }

            if (threshold.getNearlyyouXiaoLiu() < turang.getYouXiaoLiu()) {
                if (threshold.getYouXiaoLiu() < turang.getYouXiaoLiu()) {
                    warning = true;
                    bigWarning = true;
                    stringBuilder.append("#有效硫超标！,当前值为");
                    stringBuilder.append(turang.getYouXiaoLiu());
                } else {
                    warning = true;
                    stringBuilder.append("#有效硫快要超标！,当前值为");
                    stringBuilder.append(turang.getYouXiaoLiu());
                }
            }

            if (threshold.getNearlyyouXiaoTie() < turang.getYouXiaoTie()) {
                if (threshold.getYouXiaoTie() < turang.getYouXiaoTie()) {
                    warning = true;
                    bigWarning = true;
                    stringBuilder.append("#有效铁超标！,当前值为");
                    stringBuilder.append(turang.getYouXiaoTie());
                } else {
                    warning = true;
                    stringBuilder.append("#有效铁快要超标！,当前值为");
                    stringBuilder.append(turang.getYouXiaoTie());
                }
            }
            if (threshold.getNearlyyouXiaoTong() < turang.getYouXiaoTong()) {
                if (threshold.getYouXiaoTong() < turang.getYouXiaoTong()) {
                    warning = true;
                    bigWarning = true;
                    stringBuilder.append("#有效铜超标！,当前值为");
                    stringBuilder.append(turang.getYouXiaoTong());
                } else {
                    warning = true;
                    stringBuilder.append("#有效铜快要超标！,当前值为");
                    stringBuilder.append(turang.getYouXiaoTong());
                }
            }
            if (threshold.getNearlyyouXiaoXin() < turang.getYouXiaoXin()) {

                if (threshold.getYouXiaoXin() < turang.getYouXiaoXin()) {
                    warning = true;
                    bigWarning = true;
                    stringBuilder.append("#有效锌超标！,当前值为");
                    stringBuilder.append(turang.getYouXiaoXin());
                } else {
                    warning = true;
                    stringBuilder.append("#有效锌快要超标！,当前值为");
                    stringBuilder.append(turang.getYouXiaoXin());
                }
            }
            if (threshold.getNearlyyouXiaoMeng() < turang.getYouXiaoMeng()) {
                if (threshold.getYouXiaoMeng() < turang.getYouXiaoMeng()) {
                    warning = true;
                    bigWarning = true;
                    stringBuilder.append("#有效锰超标！,当前值为");
                    stringBuilder.append(turang.getYouXiaoMeng());
                } else {
                    warning = true;
                    stringBuilder.append("#有效锰快要超标！,当前值为");
                    stringBuilder.append(turang.getYouXiaoMeng());
                }
            }
        } catch (NullPointerException e) {
            //do nothing
        }
        if (warning) {
            pwarning.setDegree("快要超标！");
            if (bigWarning) {
                pwarning.setDegree("超标！");
            }
            pwarning.setProject(stringBuilder.toString());
        }
        return warning;
    }
}

