package hello.services;

import hello.entity.Greeting;
import hello.repository.GreetingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GreetingService {
  @Autowired
  private GreetingRepository greetingRepository;

  public List<Greeting> getGreetingList() {
    return greetingRepository.findAll();
  }

  public List<Greeting> getGreetingsByName(String name) {
    return greetingRepository.findAllByNameEquals(name);
  }

  public void saveGreeting(Greeting greeting) {
    greetingRepository.save(greeting);
  }

}
