package com.example.helloworld.resources;

import com.example.helloworld.core.Saying;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

@Path("/")
@Produces(MediaType.APPLICATION_JSON)
public class HelloWorldResource {

    public HelloWorldResource() {
    }

    @GET
    public Saying sayDateTime() {
        return new Saying();
    }
}