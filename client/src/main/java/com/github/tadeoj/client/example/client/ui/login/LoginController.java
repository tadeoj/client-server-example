package com.github.tadeoj.client.example.client.ui.login;

import com.github.nalukit.nalu.client.component.AbstractComponentController;
import com.github.nalukit.nalu.client.component.annotation.Controller;
import com.github.tadeoj.client.example.client.UserApplicationContext;
import com.github.tadeoj.client.example.client.domain.Credentials;
import com.github.tadeoj.client.example.client.rest.ClientServiceFactory;
import elemental2.dom.HTMLElement;
import org.dominokit.domino.ui.loaders.Loader;
import org.dominokit.domino.ui.loaders.LoaderEffect;
import org.dominokit.domino.ui.notifications.Notification;

@Controller(route ="/login/init",
            selector = "loginPanel",
            componentInterface = ILoginComponent.class,
            component = LoginComponent.class)
public class LoginController extends AbstractComponentController<UserApplicationContext, ILoginComponent, HTMLElement> implements ILoginComponent.Controller {

    private Loader loader;

    public LoginController(){}

    @Override
    public void activate() {
        loader = Loader.create(component.getContainer(), LoaderEffect.BOUNCE).setLoadingText("Please wait...");
    }

    @Override
    public void doLogin(String username, String password) {
        Credentials credentials = new Credentials();
        credentials.setUserName(username);
        credentials.setPassword(password);

        ClientServiceFactory.INSTANCE
                .login(credentials)
                .onSuccess(s -> {
                    Notification.createDanger("Exito")
                    .setPosition(Notification.BOTTOM_CENTER)
                    .show();
                }).send();
    }

}
