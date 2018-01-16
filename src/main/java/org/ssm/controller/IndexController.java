package org.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * Created by Kinney on 2017/3/15.
 */
@Controller
@RequestMapping(value = "/", method = {RequestMethod.GET, RequestMethod.POST})
public class IndexController {


    @RequestMapping(value = "index", method = RequestMethod.GET)
    public String index() {
        return "index";
    }

    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    @RequestMapping(value = "register", method = RequestMethod.GET)
    public String register() {
        return "register";
    }

    @RequestMapping(value = "displayVegetable", method = RequestMethod.GET)
    public String displayVegetable() {return "displayVegetable";}

    @RequestMapping(value = "test", method = RequestMethod.GET)
    public String test() {return "test";}

    @RequestMapping(value = "personalInformation", method = RequestMethod.GET)
    public String personalInformation() {return "personalInformation";}

    @RequestMapping(value = "address", method = RequestMethod.GET)
    public String address() {return "address";}

    @RequestMapping(value = "logisticsPage", method = RequestMethod.GET)
    public String logisticsPage() {return "logisticsPage";}

    @RequestMapping(value = "balance", method = RequestMethod.GET)
    public String balance() {return "balance";}

    @RequestMapping(value = "orderPage", method = RequestMethod.GET)
    public String orderPage() {return "orderPage";}

    @RequestMapping(value = "vegetableDetailMessage", method = RequestMethod.GET)
    public String vegetableDetailMessage() {return "vegetableDetailMessage";}

    @RequestMapping(value = "shopCarPage", method = RequestMethod.GET)
    public String shopCarPage() {return "shopCar";}

    @RequestMapping(value = "adminIndex", method = RequestMethod.GET)
    public String adminIndex() {return "adminIndex";}

    @RequestMapping(value = "admin_vegetable", method = RequestMethod.GET)
    public String adminVegetable() {return "admin_vegetable";}

    @RequestMapping(value = "admin_address", method = RequestMethod.GET)
    public String adminAddress() {return "admin_address";}
    @RequestMapping(value = "admin_shopCar", method = RequestMethod.GET)
    public String adminShopCar() {return "admin_shopCar";}

    @RequestMapping(value = "admin_opinion", method = RequestMethod.GET)
    public String adminOpinion() {return "admin_opinion";}


}
