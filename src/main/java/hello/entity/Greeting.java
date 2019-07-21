package hello.entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "greeting")
public class Greeting implements Serializable {
  @Id
  @GeneratedValue(strategy = GenerationType.TABLE)
  @Column(name = "greeting_id")
  private Long id;

  @Column(name = "name")
  private String name;

  @Column(name = "lastname")
  private String lastName;

  public Long getId() {
    return id;
  }

  public void setLastName(String lastName) {
    this.lastName = lastName;
  }

  public String getName() {
    return name;
  }

  public String getLastName() {
    return lastName;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public void setName(String name) {
    this.name = name;
  }

  public void setLastname(String lastName) {
    this.lastName = lastName;
  }
}
