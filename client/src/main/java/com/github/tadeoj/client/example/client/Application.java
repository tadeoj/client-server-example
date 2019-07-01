package com.github.tadeoj.client.example.client;

import com.github.nalukit.nalu.plugin.elemental2.client.NaluPluginElemental2;
import com.google.gwt.core.client.EntryPoint;

public class Application implements EntryPoint {

  public void onModuleLoad() {
    UserApplication application = new UserApplicationImpl();
    application.run(new NaluPluginElemental2());
  }

}
