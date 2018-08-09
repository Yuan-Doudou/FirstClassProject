package com.accp.springmvc.contorller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.accp.springmvc.entity.Book;
import com.accp.springmvc.entity.cart;
import com.accp.springmvc.service.BookService;

@RequestMapping("test/BookController")
@Controller
public class BookController {
	
	@Autowired
	public BookService bookService;
	
	@RequestMapping("/bookk")
	public String selectAll(HttpServletRequest request) {
		List<Book> bk=this.bookService.selectAll();
		request.setAttribute("book", bk);
		return "/page/Books.jsp";
	}
	
	
	
	@RequestMapping("/bookd")
	public String selectBLL(HttpServletRequest request) {
		List<cart> ca=this.bookService.selectBll();
		request.setAttribute("book", ca);
		return "/page/Cart.jsp";
	}
	
	@RequestMapping("/boook")
	public String selectCLL(HttpServletRequest request,int bookid) {
		this.bookService.selectcar(bookid);
		return "/test/BookController/bookd";
	}
	
	@RequestMapping("/delete")
	public String  deletecar(HttpServletRequest request) {
		this.bookService.deletecar();
		return "/test/BookController/bookd";
	}
	
	@RequestMapping("/deleteone")
	public String deleteone(HttpServletRequest request,int bookid) {
		this.bookService.deleteone(bookid);
		return "/test/BookController/bookd";
	}
}
