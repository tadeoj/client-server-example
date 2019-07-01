package com.github.tadeoj.client.example.client.ui.header;

import com.github.nalukit.nalu.client.component.AbstractComponent;
import elemental2.dom.HTMLDivElement;
import elemental2.dom.HTMLElement;
import org.dominokit.domino.ui.button.Button;
import org.dominokit.domino.ui.icons.Icons;
import org.dominokit.domino.ui.labels.Label;
import org.dominokit.domino.ui.style.Color;
import org.jboss.gwt.elemento.core.Elements;

public class HeaderComponent extends AbstractComponent<IHeaderComponent.Controller, HTMLElement> implements IHeaderComponent {

    private Label userName;

    public HeaderComponent() {
    }

    @Override
    public void render() {


        userName = Label.create("");

        Button closeSession = Button.createPrimary(Icons.ALL.power_settings_new())
                .setTextContent("Cerrar sesión")
                .linkify()
                .setBackground(Color.RED)
                .addClickListener(evt -> getController().closeSession());

        HTMLDivElement divElement = Elements.div().asElement();

        divElement.appendChild(userName.style().setMargin("10px").setLineHeight("48px").setFontSize("14px").asElement());
        divElement.appendChild(closeSession.style().setMarginTop("0px").setMarginRight("10px").asElement());

        initElement(divElement);
    }

    @Override
    public void setUser() {
        userName.setContent("Usuario: ");
    }

}
