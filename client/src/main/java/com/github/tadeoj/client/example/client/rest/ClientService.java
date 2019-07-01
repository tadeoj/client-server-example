package com.github.tadeoj.client.example.client.rest;

import com.github.tadeoj.client.example.client.domain.Credentials;
import org.dominokit.domino.rest.shared.request.service.annotations.RequestFactory;

import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;

@RequestFactory(serviceRoot = "http://localhost:8080/")
public interface ClientService {

    @Path("userSessionCreate")
    String login(@QueryParam("credentials") Credentials credentials);


}
