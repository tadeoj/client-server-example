package com.github.tadeoj.client.example.client.ui.app.home;

import com.github.nalukit.nalu.client.component.AbstractComponent;
import elemental2.dom.HTMLElement;
import org.dominokit.domino.ui.cards.Card;
import org.dominokit.domino.ui.header.BlockHeader;
import org.dominokit.domino.ui.icons.Icons;
import org.dominokit.domino.ui.labels.Label;
import org.dominokit.domino.ui.style.Color;

public class HomeComponent extends AbstractComponent<IHomeComponent.Controller, HTMLElement> implements IHomeComponent {

    private Label projectIdLabel;
    private Label projectNameLabel;

    public HomeComponent() {
    }

    @Override
    public void render() {

        projectIdLabel = Label.create("");
        projectNameLabel = Label.create("");

        initElement(Card.create("Información del proyecto")
                .setHeaderBackground(Color.RED)
                .appendChild(BlockHeader.create("Id del proyecto").appendChild(projectIdLabel.style().setColor("black").setFontSize("14px").setPadding("0px")).style().setPaddingLeft("10px"))
                .appendChild(BlockHeader.create("Nombre del proyecto").appendChild(projectNameLabel.style().setColor("black").setFontSize("14px").setPadding("0px")).style().setPaddingLeft("10px"))
                .style()
                .setMarginTop("20px")
                .setMarginLeft("20px")
                .setMarginRight("20px")
                .setWidth("300px")
                .asElement());

    }

}
