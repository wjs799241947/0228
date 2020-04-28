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
 * ����������Զ�����ִ�еĿ�����
 * ���ã���ȡ������Ϣ����ҳ��Ϣ��
 * @author Administrator
 *
 */
@Controller
public class OnLoadStartUpController implements InitializingBean,ServletContextAware{
	
	//ע��������service
	@Autowired
	private HouseService houseService;

	//������������ʱ���Զ�ִ�еķ���
	@Override
	public void setServletContext(ServletContext application) {
		//��ȡ���з�Դ��Ϣ�б� 
		List<Housetb> houseList = houseService.selectByExample(null);
		//�ѻ�õ�����Ϣ����application
		application.setAttribute("houseList", houseList);
	}

	@Override
	public void afterPropertiesSet() throws Exception {
		// TODO Auto-generated method stub
		
	}

}
