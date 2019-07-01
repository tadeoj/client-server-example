package com.github.tadeoj.client.example.client.ui.header;

import com.github.nalukit.nalu.client.component.IsComponent;
import elemental2.dom.HTMLElement;

import java.util.List;

public interface IHeaderComponent extends IsComponent<IHeaderComponent.Controller, HTMLElement> {

    void setUser();

    interface Controller extends IsComponent.Controller {
        void closeSession();
    }

}
