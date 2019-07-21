package hello.api;

import hello.entity.User;
import hello.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/users")
public class UserController {

  @Autowired
  private UserService userService;

  @GetMapping
  public List<User> getAllUsers() {
    return userService.getUserList();
  }

  @PostMapping
  public void addUser(@RequestBody User user) {
    userService.saveUser(user);
  }
}
