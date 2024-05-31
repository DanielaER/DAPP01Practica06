package org.uv.DAAP01Practica05;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/api")
public class HelloController {
    @GetMapping(path = "/hola")
    public String sayHola(){
        return "Hola mundo!";
    }

}