package cn.softeem.xzms.controller;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.context.ServletContextAware;

import cn.softeem.xzms.entity.Housetb;
import cn.softeem.xzms.service.HouseService;


/**
 * 框架启动就自动加载执行的控制器
 * 作用：获取公共信息（首页信息）
 * @author Administrator
 *
 */
@Controller
public class OnLoadStartUpController implements InitializingBean,ServletContextAware{
	
	//注入依赖的service
	@Autowired
	private HouseService houseService;

	//当控制器加载时会自动执行的方法
	@Override
	public void setServletContext(ServletContext application) {
		//获取所有房源信息列表 
		List<Housetb> houseList = houseService.selectByExample(null);
		//把获得到的信息存入application
		application.setAttribute("houseList", houseList);
	}

	@Override
	public void afterPropertiesSet() throws Exception {
		// TODO Auto-generated method stub
		
	}

}
