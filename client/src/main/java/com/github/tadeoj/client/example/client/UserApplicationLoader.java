package com.github.tadeoj.client.example.client;

import com.github.nalukit.nalu.client.application.AbstractApplicationLoader;
import com.github.tadeoj.client.example.client.ui.security.CurrentSession;

public class UserApplicationLoader extends AbstractApplicationLoader<UserApplicationContext> {

  @Override
  public void load(FinishLoadCommand finishLoadCommand) {
     context.setCurrentSession(new CurrentSession());
     finishLoadCommand.finishLoading();
  }

}
