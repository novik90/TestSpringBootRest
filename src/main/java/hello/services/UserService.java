package hello.services;

import hello.entity.User;
import hello.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
  @Autowired
  private UserRepository userRepository;

  public List<User> getUserList() {
    return userRepository.findAll();
  }

  public void saveUser(User user) {
    userRepository.save(user);
  }

}
