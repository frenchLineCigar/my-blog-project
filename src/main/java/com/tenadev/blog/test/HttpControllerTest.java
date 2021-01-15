package com.tenadev.blog.test;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;

public class HttpControllerTest {
		
		private static final String TAG = "HttpControllerTest : ";
		
		@GetMapping("/http/lombok")
		public String lombokTest() {
			Member m = Member.builder().username("ssar").password("1234").email("ssar@nate.com").build();
			System.out.println(TAG+"getter : " + m.getId());
			m.setId(5000);
			System.out.println(TAG+"setter : " + m.getId());
			return "lombok test 완료";
		}
		
		// http://localhost:8080/http/get (select)
		@GetMapping("/http/get")
		public String getTest(Member m) { //id=1&username=ssar&password=1234&email=ssar@nate.com // MessageConverter (스프링부트)
			return "get 요청 : "+m.getId()+", "+m.getUsername()+", "+m.getPassword()+", "+m.getEmail();
		}
		
		// http://localhost:8080/http/post (insert)
		@PostMapping("/http/post") // text/plain, application/json
		public String postTest(@RequestBody Member m) { // MessageConverter (스프링부트)
			return "post 요청 : "+m.getId()+", "+m.getUsername()+", "+m.getPassword()+", "+m.getEmail();
		}
		
		// http://localhost:8080/http/put (update)
		@PutMapping("/http/put")
		public String putTest(@RequestBody Member m) {
			return "put 요청 : "+m.getId()+", "+m.getUsername()+", "+m.getPassword()+", "+m.getEmail();
		}
		
		// http://localhost:8080/http/delete (delete)
		@DeleteMapping("/http/delete")
		public String deleteTest() {
			return "delete 요청";
		}
}
