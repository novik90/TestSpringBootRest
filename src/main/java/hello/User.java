package hello;

public class User {
  private String name;
  private String ogli;
  private int age;

  public User(String name, String ogli, int age) {
    this.name = name;
    this.ogli = ogli;
    this.age = age;
  }

  public String getName() {
    return name;
  }

  public String getOgli() {
    return ogli;
  }

  public int getAge() {
    return age;
  }
}
