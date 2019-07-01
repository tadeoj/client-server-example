package com.github.tadeoj.client.example.client;

import com.github.nalukit.nalu.client.application.IsApplication;
import com.github.nalukit.nalu.client.application.annotation.Application;
import com.github.nalukit.nalu.client.application.annotation.Debug;
import com.github.nalukit.nalu.plugin.elemental2.client.DefaultElemental2Logger;

@Application(loader = UserApplicationLoader.class,
             startRoute = "/login/init",
             context = UserApplicationContext.class,
             routeError = "/login/init",
             useHash = false)
@Debug(logLevel = Debug.LogLevel.DETAILED,
       logger = DefaultElemental2Logger.class)
interface UserApplication extends IsApplication {
}
