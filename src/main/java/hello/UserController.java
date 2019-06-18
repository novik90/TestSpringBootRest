package hello;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/userDetail")
public class UserController {

  @PostMapping
  public User user(@RequestBody User user) {
    return new User(user.getName(), user.getSurname(), user.getAge());
  }
}
