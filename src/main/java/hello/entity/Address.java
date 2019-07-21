package hello.entity;

import javax.persistence.*;

@Entity
@Table(name = "address")
public class Address {

  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  @Column(name = "address_id")
  private long id;

  @Column(name = "street")
  private String street;

  @Column(name = "city")
  private String city;

  public long getId() {
    return id;
  }

  public String getStreet() {
    return street;
  }

  public void setStreet(String street) {
    this.street = street;
  }

  public String getCity() {
    return city;
  }

  public void setCity(String city) {
    this.city = city;
  }

}
