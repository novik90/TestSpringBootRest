package hello.entity;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "global_news")
public class News {
  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private long id;

  @Column(name = "title_news")
  private String title;

  @Column(name = "description_news")
  private String description;

  //TODO сделать сущность автор + таблицу в бд
  @Column(name = "author_news")
  private String author;

  @Column(name = "topic_news")
  private String topic;

  @Temporal(TemporalType.TIMESTAMP)
  @Column(name = "date_news", nullable = false, updatable = false)
  private Date date;

  public long getId() {
    return id;
  }

  public String getTitle() {
    return title;
  }

  public String getDescription() {
    return description;
  }

  public String getAuthor() {
    return author;
  }

  public String getTopic() {
    return topic;
  }

  public Date getDate() {
    return date;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public void setAuthor(String author) {
    this.author = author;
  }

  public void setTopic(String topic) {
    this.topic = topic;
  }

  public void setDate(Date date) {
    this.date = date;
  }
}
