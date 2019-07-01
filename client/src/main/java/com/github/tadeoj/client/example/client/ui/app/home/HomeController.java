package com.github.tadeoj.client.example.client.ui.app.home;

import com.github.nalukit.nalu.client.component.AbstractComponentController;
import com.github.nalukit.nalu.client.component.annotation.Controller;
import com.github.tadeoj.client.example.client.UserApplicationContext;
import elemental2.dom.HTMLElement;

@Controller(route ="/app/home",
            selector = "content",
            componentInterface = IHomeComponent.class,
            component = HomeComponent.class)
public class HomeController extends AbstractComponentController<UserApplicationContext, IHomeComponent, HTMLElement> implements IHomeComponent.Controller {

    public HomeController(){}

    @Override
    public void start() {
    }

    @Override
    public void activate() {

    }

}
