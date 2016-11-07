package ru.innopolis;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Smith on 07.11.2016.
 *
 * MainController handles requests from all web app
 */
@Controller
public class MainController {

    /**
     * For opening page with two links, to user page and to admin page
     * @return
     */
    @RequestMapping(value = "/")
    public ModelAndView main() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("index");
        return modelAndView;
    }

    /**
     * For opening login page
     * @return
     */
    @RequestMapping(value = "/login")
    public ModelAndView login() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("login");
        return modelAndView;
    }

    /**
     * For opening admin page
     * @return
     */
    @RequestMapping(value = "/admin_page")
    public ModelAndView admin_page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("admin_page");
        return modelAndView;
    }

    /**
     * For opening user_page
     * @return
     */
    @RequestMapping(value = "/user_page")
    public ModelAndView user_page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("user_page");
        return modelAndView;
    }
}
