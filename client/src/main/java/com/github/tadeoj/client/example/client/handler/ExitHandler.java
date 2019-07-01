package com.github.tadeoj.client.example.client.handler;

import com.github.nalukit.nalu.client.handler.AbstractHandler;
import com.github.nalukit.nalu.client.handler.annotation.Handler;
import com.github.tadeoj.client.example.client.UserApplicationContext;
import com.github.tadeoj.client.example.client.event.*;

@Handler
public class ExitHandler extends AbstractHandler<UserApplicationContext> {

    @Override
    public void bind() {
        eventBus.addHandler(ExitEvent.TYPE, e -> exitMode());
    }

    private void exitMode() {
        this.context.getCurrentSession().removeSession();
        this.context.setUser(null);
        this.router.route("/login/init");
    }

}
