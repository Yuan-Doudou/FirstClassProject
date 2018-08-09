package com.accp.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.accp.springmvc.entity.Book;
import com.accp.springmvc.entity.cart;
import com.accp.springmvc.mapper.BookMapper;

@Service
public class BookService {
	@Autowired
	public BookMapper bookmapper;
	
	public List<Book> selectAll(){
		return this.bookmapper.selectA();
	}
	
	public List<cart> selectBll(){
		return this.bookmapper.selectB();
	}
	
	public Book selectone(int bookid) {
		return this.bookmapper.selectC(bookid);
	}
	
	public cart selectcar(int bookid) {
		cart ca= this.bookmapper.selectD(bookid);
		Book k=bookmapper.selectC(bookid);
		if(ca!=null) {
			this.bookmapper.updateone(bookid);
		}else {
			this.bookmapper.insertOne(k);
		}
		return ca;
	}
	
	public int deletecar() {
		return this.bookmapper.deletecar();
	}
	
	public int deleteone(int bookid) {
		return this.bookmapper.deleteone(bookid);
	}
	
}
