package com.redkale.examples.hello;

import org.redkale.net.http.RestService;
import org.redkale.service.Service;

@RestService(autoMapping = true)
public class HelloService implements Service {

    public String sayHello() {
        return "Hello World！";
    }

    public String hi(String name) {
        return "Hi, " + name + "！";
    }
}
