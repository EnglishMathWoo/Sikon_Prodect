package com.sikon.common;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.sikon.service.ranking.RankingService;

public class SikonServlet extends HttpServlet {
	
	///Field
	@Autowired
	@Qualifier("rankingServiceImpl")
	private RankingService rankingService;
	private ServletConfig config;
	
	public void init(ServletConfig config) throws ServletException {
		this.config = config;
		this.init();
	}
	
	public void ini() throws ServletException {
		System.out.println("¹«¾ßÈ£¿À¿Ë");
	}
}