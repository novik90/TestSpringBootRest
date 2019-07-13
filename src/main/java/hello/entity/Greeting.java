package hello.entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "greeting")
public class Greeting implements Serializable {
  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private long id;

  @Column(name = "name")
  private String name;

  @Column(name = "lastname")
  private String lastname;

  public long getId() {
    return id;
  }

  public String getName() {
    return name;
  }

  public String getLastname() {
    return lastname;
  }

  public void setId(long id) {
    this.id = id;
  }

  public void setName(String name) {
    this.name = name;
  }

  public void setLastname(String lastname) {
    this.lastname = lastname;
  }
}
