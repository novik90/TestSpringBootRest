package hello.api;

import hello.entity.Greeting;
import hello.services.GreetingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/greeting")
public class GreetingController {
  @Autowired
  private GreetingService greetingService;

  @GetMapping
  public List<Greeting> getAllGreetings() {
    return greetingService.getGreetingList();
  }

  @PostMapping
  public List<Greeting> addGreeting(@RequestBody Greeting greeting) {
    greetingService.saveGreeting(greeting);
    return greetingService.getGreetingsByName(greeting.getName());
  }
}
