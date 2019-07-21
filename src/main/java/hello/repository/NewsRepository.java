package hello.repository;

import hello.entity.News;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface NewsRepository extends CrudRepository<News, Long> {
  List<News> findByOrderByIdDesc();
}
