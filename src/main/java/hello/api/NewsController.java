package hello.api;

import hello.entity.News;
import hello.services.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/main")
public class NewsController {
  @Autowired
  private NewsService newsService;

  @GetMapping
  public List<News> getAllNews() {
    return newsService.getNewsList();
  }
}
