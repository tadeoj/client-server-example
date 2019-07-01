package com.github.tadeoj.client.example.client;

import com.github.nalukit.nalu.client.application.IsContext;
import com.github.tadeoj.client.example.client.domain.User;
import com.github.tadeoj.client.example.client.ui.security.CurrentSession;
import org.dominokit.domino.ui.layout.Layout;

public class UserApplicationContext implements IsContext {

  private Layout rootLayout;
  private CurrentSession currentSession;
  private User user;

  public UserApplicationContext() {
  }

  public Layout getRootLayout() {
    return rootLayout;
  }

  public void setRootLayout(Layout rootLayout) {
    this.rootLayout = rootLayout;
  }

  public CurrentSession getCurrentSession() {
    return currentSession;
  }

  public void setCurrentSession(CurrentSession currentSession) {
    this.currentSession = currentSession;
  }

  public User getUser() {
    return user;
  }

  public void setUser(User user) {
    this.user = user;
  }

}

