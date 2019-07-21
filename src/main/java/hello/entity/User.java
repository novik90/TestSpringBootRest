package hello.entity;

import javax.persistence.*;

@Entity
@Table(name = "users")
public class User {

  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  @Column(name = "user_id")
  private long id;

  @Column(name = "username")
  private String username;

  @Column(name = "address_id")
  private long addressId;

  @OneToOne(mappedBy = "user")
  private News news;

  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public long getAddressId() {
    return addressId;
  }

  public void setAddressId(long addressId) {
    this.addressId = addressId;
  }
}
