package hello.services;

import hello.entity.News;
import hello.repository.NewsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NewsService {
  @Autowired
  private NewsRepository newsRepository;

  public List<News> getNewsList() {
    return newsRepository.findAll();
  }
}
