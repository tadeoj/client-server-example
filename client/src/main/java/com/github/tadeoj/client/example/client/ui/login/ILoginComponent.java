package com.github.tadeoj.client.example.client.ui.login;

import com.github.nalukit.nalu.client.component.IsComponent;
import elemental2.dom.HTMLDivElement;
import elemental2.dom.HTMLElement;

public interface ILoginComponent extends IsComponent<ILoginComponent.Controller, HTMLElement> {

    public HTMLDivElement getContainer();

    interface Controller extends IsComponent.Controller {
        void doLogin(String username, String password);
    }

}
