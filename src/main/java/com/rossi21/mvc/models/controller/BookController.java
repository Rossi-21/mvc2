package com.rossi21.mvc.models.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rossi21.mvc.models.Book;
import com.rossi21.mvc.models.services.BookService;

@Controller
public class BookController {

	@Autowired
	BookService bookService;
	
	@RequestMapping("/books/{bookId}")
		public String index(Model model, @PathVariable("bookId")Long bookId) {
		
		System.out.println(bookId);
		
		Book book = bookService.findBook(bookId);
		model.addAttribute("book", book);
		
		System.out.println(book);
		
		return "index.jsp";
	}
}
