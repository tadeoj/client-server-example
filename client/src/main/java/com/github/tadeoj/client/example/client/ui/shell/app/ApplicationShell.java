package com.github.tadeoj.client.example.client.ui.shell.app;

import com.github.nalukit.nalu.client.component.AbstractShell;
import com.github.nalukit.nalu.client.component.annotation.Shell;
import org.dominokit.domino.ui.grid.Column;
import org.dominokit.domino.ui.grid.Row;
import org.dominokit.domino.ui.layout.Layout;
import org.dominokit.domino.ui.mediaquery.MediaQuery;
import org.dominokit.domino.ui.style.ColorScheme;
import com.github.tadeoj.client.example.client.UserApplicationContext;


@Shell("app")
public class ApplicationShell extends AbstractShell<UserApplicationContext> {

    private Layout layout;

    public ApplicationShell() {
    }

    @Override
    public void attachShell() {
        this.layout = Layout.create("Client Example")
                .setHeight("100%")
                .show(ColorScheme.RED);

        layout.getNavigationBar().getNavBarHeader().style().setMinHeight("48px").setHeight("48px").setPadding("0px").setBoxShadow("0 3px 4px 0 rgba(0,0,0,.2), 0 3px 3px -2px rgba(0,0,0,.14), 0 1px 8px 0 rgba(0,0,0,.12)");
        layout.getNavigationBar().getTopBarContainer().style().setMinHeight("48px").setHeight("48px").setPadding("0px");
        layout.getNavigationBar().style().setMarginBottom("0px");
        layout.getNavigationBar().getTopBarContainer().setId("header");
        layout.getRightPanel().hide();

        layout.getNavigationBar().getMenuToggleItem().setFlexBasis("20px");

        layout.getNavigationBar().getNavBar().style().setMinHeight("48px").setHeight("48px").setPadding("0px");
        layout.getNavigationBar().getTopBar().style().setMinHeight("48px").setHeight("48px").setPadding("0px");

        layout.getLeftPanel().hide();
        layout.setHeaderHeight("48px");

        layout.getContentSection().setHeight("calc(100% - 48px)")
                .style()
                .setMarginTop("48px")
                .setMarginLeft("0px")
                .setMarginRight("0px");

        layout.getContentPanel()
                .setHeight("100%")
                .appendChild(Row.create()
                        .setHeight("100%")
                        .appendChild(Column.span12()
                                .setId("content")
                                .setHeight("100%")
                                .setWidth("100%")
                        )
                )
                .style()
                .setMinWidth("1000px")
                .setPadding("0px");

        context.setRootLayout(layout);

        MediaQuery.addOnMediumAndDownListener(layout::hideRightPanel);

    }

    @Override
    public void detachShell() {
        this.layout.remove();
    }

}
