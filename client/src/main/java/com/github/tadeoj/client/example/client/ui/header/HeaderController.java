package com.github.tadeoj.client.example.client.ui.header;

import com.github.nalukit.nalu.client.component.AbstractComponentController;
import com.github.nalukit.nalu.client.component.annotation.Controller;
import elemental2.dom.HTMLElement;
import com.github.tadeoj.client.example.client.UserApplicationContext;

@Controller(route ="/app",
            selector = "header",
            componentInterface = IHeaderComponent.class,
            component = HeaderComponent.class)
public class HeaderController extends AbstractComponentController<UserApplicationContext, IHeaderComponent, HTMLElement> implements IHeaderComponent.Controller {

    public HeaderController(){}

    @Override
    public void start() {
    }

    @Override
    public void activate() {
        getUser();
    }

    private void getUser() {
    }

    @Override
    public void closeSession() {
    }

}
