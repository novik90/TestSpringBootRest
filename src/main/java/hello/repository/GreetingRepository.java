package hello.repository;

import hello.entity.Greeting;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface GreetingRepository extends CrudRepository<Greeting, Long> {
  List<Greeting> findAll();

  List<Greeting> findAllByName(String name);
}
