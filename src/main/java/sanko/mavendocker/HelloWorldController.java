package sanko.mavendocker;

import org.springframework.web.bind.annotation.*;

@RestController
public class HelloWorldController {
	
	@GetMapping("/")
	public String hello() {
		return "hello, world!";
	}

}
