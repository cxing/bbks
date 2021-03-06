package com.fang.bbks.modules.sys.service;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fang.bbks.common.persistence.Page;
import com.fang.bbks.common.utils.StringUtils;
import com.fang.bbks.modules.sys.dao.BookContentDao;
import com.fang.bbks.modules.sys.entity.Book;
import com.fang.bbks.modules.sys.entity.BookContent;

/**
 * @Intro Book service Component
 * @author Lee
 * @Date 2013-8-1
 */
@Service("bookContentService")
@Transactional(readOnly = true)
public class BookContentService {
	@SuppressWarnings("unused")
	private static Logger logger = LoggerFactory.getLogger(BookContentService.class);
	
	@Autowired
	BookContentDao bookContentDao;
	
	/**
	 * 获取书籍信息
	 * @param id
	 * @return
	 */
	public BookContent findOne(Long id){
		return bookContentDao.findOne(id);
	}
	
	/**
	 * delete by id
	 * @param id
	 */
	@Transactional(readOnly = false)
	public void delete(Long id) {
		bookContentDao.deleteById(id);
		//TODO 从列表中也出这本书及的信息
	}
	
	public Page<BookContent> find(Page<BookContent> page ,BookContent bookContent){
		DetachedCriteria dc = bookContentDao.createDetachedCriteria();
		if(bookContent == null || bookContent.getBook() == null){
			return null;
		}
		
		dc.createAlias("book", "book");
		dc.add(Restrictions.eq("book.id", bookContent.getBook().getId()));
		
		return bookContentDao.find(page);
	}
	
	/**
	 * save with entity
	 * @param id
	 * @return
	 */
	@Transactional(readOnly = false)
	public BookContent save(BookContent bookContent){
		return bookContentDao.save(bookContent);
	}
}
