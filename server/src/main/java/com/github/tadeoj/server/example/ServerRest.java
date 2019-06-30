package com.github.tadeoj.server.example;

import com.github.tadeoj.server.example.domain.User;
import com.google.gson.Gson;
import io.vertx.core.AbstractVerticle;
import io.vertx.core.Vertx;
import io.vertx.core.http.HttpServerOptions;
import io.vertx.core.http.HttpServerResponse;
import io.vertx.ext.web.Router;
import io.vertx.ext.web.RoutingContext;
import io.vertx.ext.web.handler.CorsHandler;

public class ServerRest extends AbstractVerticle {

    private Vertx vertx;
    private Gson gson;

    public static void main(String[] args) {
        new ServerRest().start();
    }

    public ServerRest() {
        gson = new Gson();
    }

    @Override
    public void start() {

        vertx = Vertx.vertx();
        HttpServerOptions httpServerOptions = new HttpServerOptions();

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
        vertx.createHttpServer(httpServerOptions).requestHandler(mainRouter).listen(8080);
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
        response.end("sessionId0001");
    }

    private void userGet(RoutingContext routingContext) {

        String session = routingContext.request().getHeader("user-session");
        HttpServerResponse response = routingContext.response();

        User user = new User();
        user.setName("Bruce");
        user.setFirstName("Wayne");
        user.setEmail("bruce@gotham.com");

        String userJson = gson.toJson(user);

        if (session != null && session.equals("sessionId0001")) {
            response.end(userJson);
        } else {
            response.setStatusCode(401);
            response.end();
        }

    }

    private void sessionClose(RoutingContext routingContext) {
        String session = routingContext.request().getHeader("user-session");
        HttpServerResponse response = routingContext.response();

        if (session != null && session.equals("sessionId0001")) {
            response.end("");
        } else {
            response.setStatusCode(401);
            response.end();
        }
    }

}