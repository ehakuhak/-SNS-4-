import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import service.RecommendService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/spring/application-config.xml")
public class RecommendTest {
	public static Logger logger = LoggerFactory.getLogger(RecommendTest.class);
	@Autowired
	RecommendService service;
	@Test
	public void test() {
		try{
			service.RecommedBoardService(25, 21);
		}catch(RuntimeException e){
			e.getMessage();
			logger.error("이미 추천 핫셨습니다.");
			System.out.println("이미 추천한 글 입니다.");
		}
	}

}
