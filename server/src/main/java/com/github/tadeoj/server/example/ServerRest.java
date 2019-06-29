package com.github.tadeoj.server.example;

import io.vertx.core.AbstractVerticle;
import io.vertx.core.Vertx;
import io.vertx.core.http.HttpServer;
import io.vertx.core.http.HttpServerOptions;
import io.vertx.core.http.HttpServerResponse;
import io.vertx.ext.web.Router;
import io.vertx.ext.web.RoutingContext;
import io.vertx.ext.web.handler.CorsHandler;

public class ServerRest extends AbstractVerticle {

    private Vertx vertx;

    public static void main(String[] args) {
        new ServerRest().start();
    }

    @Override
    public void start() {

        // La instancia del vertx
        vertx = Vertx.vertx();

        // Se prepara las opciones del HttpServer
        HttpServerOptions httpServerOptions = new HttpServerOptions();

        // La instancia del servidor http
        HttpServer httpServer = vertx.createHttpServer(httpServerOptions);

        // Se crea el enrutador
        Router mainRouter = Router.router(vertx);
        mainRouter.route().handler(CorsHandler.create("*")
                .allowedMethod(io.vertx.core.http.HttpMethod.GET)
                .allowedMethod(io.vertx.core.http.HttpMethod.POST)
                .allowedMethod(io.vertx.core.http.HttpMethod.PUT)
                .allowedMethod(io.vertx.core.http.HttpMethod.DELETE)
                .allowedHeader("Access-Control-Request-Method")
                .allowedHeader("Access-Control-Allow-Credentials")
                .allowedHeader("Access-Control-Allow-Origin")
                .allowedHeader("Access-Control-Allow-Headers")
                .allowedHeader("user-session")
                .allowedHeader("Content-Type"));

        // Se instalan todos los handlers
        mainRouter.post("/userSessionCreate/").handler(this::userAuthUserSessionCreate);
        mainRouter.get("/userGet/").handler(this::userGet);
        mainRouter.post("/sessionClose/").handler(this::sessionClose);

        // Se inicia el servidor Http
        vertx.createHttpServer().requestHandler(mainRouter).listen(8080);
    }

    @Override
    public void stop() {
        vertx.close();
    }

    /////////////////////////////////////////////////////////////////////////////////////////////////
    // Handlers
    /////////////////////////////////////////////////////////////////////////////////////////////////

    private void userAuthUserSessionCreate(RoutingContext routingContext) {
        String credentials = routingContext.request().getParam("credentials");
        HttpServerResponse response = routingContext.response();
        response.end("sessionId");
    }

    private void userGet(RoutingContext routingContext) {
//        String session = routingContext.request().getHeader("user-session");
        HttpServerResponse response = routingContext.response();
        response.end("Usuario");
    }

    private void sessionClose(RoutingContext routingContext) {
        String session = routingContext.request().getHeader("user-session");
        HttpServerResponse response = routingContext.response();
        response.end("");
    }

}