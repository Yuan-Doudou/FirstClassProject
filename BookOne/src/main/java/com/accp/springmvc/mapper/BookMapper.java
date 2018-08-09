package com.accp.springmvc.mapper;

import java.util.List;

import com.accp.springmvc.entity.Book;
import com.accp.springmvc.entity.cart;

public interface BookMapper {
	List<Book> selectA();
	
	List<cart> selectB();
	
	Book selectC(int bookid);
	
	cart selectD(int bookid);
	
	int updateone(int bookid);
	
	int insertOne(Book book);
	
	int deletecar();
	
	int deleteone(int bookid);
}
