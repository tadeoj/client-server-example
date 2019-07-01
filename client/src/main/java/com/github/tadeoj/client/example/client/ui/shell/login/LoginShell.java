package com.github.tadeoj.client.example.client.ui.shell.login;

import com.github.nalukit.nalu.client.component.AbstractShell;
import com.github.nalukit.nalu.client.component.annotation.Shell;
import org.dominokit.domino.ui.grid.flex.FlexAlign;
import org.dominokit.domino.ui.grid.flex.FlexDirection;
import org.dominokit.domino.ui.grid.flex.FlexJustifyContent;
import org.dominokit.domino.ui.grid.flex.FlexLayout;
import org.dominokit.domino.ui.layout.Layout;
import org.dominokit.domino.ui.style.ColorScheme;
import com.github.tadeoj.client.example.client.UserApplicationContext;

@Shell("login")
public class LoginShell extends AbstractShell<UserApplicationContext> {

    private Layout layout;

    public LoginShell() {
    }

    @Override
    public void attachShell() {
        this.layout = Layout.create("Client Example")
                .setHeight("100%")
                .show(ColorScheme.RED);

        layout.getNavigationBar().getNavBarHeader().style().setMinHeight("48px").setHeight("48px").setPadding("0px").setBoxShadow("0 3px 4px 0 rgba(0,0,0,.2), 0 3px 3px -2px rgba(0,0,0,.14), 0 1px 8px 0 rgba(0,0,0,.12)");
        layout.getNavigationBar().getTopBarContainer().style().setMinHeight("48px").setHeight("48px").setPadding("0px");
        layout.getNavigationBar().getNavBar().style().setMinHeight("48px").setHeight("48px").setPadding("0px");
        layout.getNavigationBar().getTopBar().style().setMinHeight("48px").setHeight("48px").setPadding("0px");
        layout.getNavigationBar().style().setMarginBottom("0px");
        layout.getNavigationBar().getTopBarContainer().setId("loginHeader");

        layout.setHeaderHeight("48px");
        layout.getRightPanel().hide();
        layout.getLeftPanel().hide();
        layout.getFooter().hide();

        layout.getNavigationBar().getMenuToggleItem().hide();

        FlexLayout rootLayout = FlexLayout.create()
                .setDirection(FlexDirection.LEFT_TO_RIGHT)
                .setJustifyContent(FlexJustifyContent.CENTER)
                .setAlignItems(FlexAlign.CENTER)
                .setHeight("100%")
                .setId("loginPanel");

        layout.getContentPanel().appendChild(rootLayout.style().add("fill-height")).asElement();
    }

    @Override
    public void detachShell() {
        this.layout.remove();
    }

}
