package com.github.tadeoj.client.example.client.ui.login;

import com.github.nalukit.nalu.client.component.AbstractComponent;
import elemental2.dom.HTMLDivElement;
import elemental2.dom.HTMLElement;
import elemental2.dom.KeyboardEvent;
import org.dominokit.domino.ui.button.Button;
import org.dominokit.domino.ui.cards.Card;
import org.dominokit.domino.ui.forms.FieldsGrouping;
import org.dominokit.domino.ui.forms.TextBox;
import org.dominokit.domino.ui.icons.Icons;
import org.dominokit.domino.ui.style.Color;
import org.jboss.gwt.elemento.core.Elements;
import org.jboss.gwt.elemento.core.EventType;

public class LoginComponent extends AbstractComponent<ILoginComponent.Controller, HTMLElement> implements ILoginComponent {

    private HTMLDivElement container;

    public LoginComponent() {
    }

    @Override
    public void render() {

        FieldsGrouping fields = new FieldsGrouping().create();
        fields.setAutoValidation(true).setRequired(true, "Required field");

        Button login = Button.create(Icons.ALL.lock_open())
                .setBackground(Color.THEME)
                .setContent("Login");

        TextBox user_name = TextBox.create("User name")
                .setLeftAddon(Icons.ALL.person())
                .setFocusColor(Color.RED_LIGHTEN_3)
                .groupBy(fields)
                .setRequired(true)
                .setAutoValidation(true)
                .addEventListener(EventType.keyup, s -> {
                    if (fields.validate().isValid()) {
                        login.enable();
                    } else {
                        login.disable();
                    }
                });

        TextBox password = TextBox.password("Password")
                .setLeftAddon(Icons.ALL.key_mdi())
                .setFocusColor(Color.RED_LIGHTEN_3)
                .groupBy(fields)
                .setRequired(true)
                .setAutoValidation(true)
                .addEventListener(EventType.keyup, s -> {
                    if (fields.validate().isValid()) {
                        login.enable();
                    } else {
                        login.disable();
                    }
                });

        container = Elements.div().asElement();
        container.appendChild(Card.create("Login")
                .setHeaderBackground(Color.THEME)
                .setWidth("500px")
                .appendChild(user_name.addEventListener(EventType.keypress, s -> {
                    KeyboardEvent event = (KeyboardEvent) s;
                    if (event.code.equals("Enter")) {
                        getController().doLogin(user_name.getValue(),password.getValue());
                    }
                }))
                .appendChild(password.addEventListener(EventType.keypress, s -> {
                    KeyboardEvent event = (KeyboardEvent) s;
                    if (event.code.equals("Enter")) {
                        getController().doLogin(user_name.getValue(),password.getValue());
                    }
                }))
                .appendChild(login
                        .addClickListener(evt -> getController().doLogin(user_name.getValue(),password.getValue()))
                        .style().setMinWidth("120px"))
                .asElement());

        initElement(container);
    }

    @Override
    public HTMLDivElement getContainer() {
        return container;
    }

}
