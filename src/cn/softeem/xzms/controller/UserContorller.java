package cn.softeem.xzms.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

import cn.softeem.xzms.entity.Housetb;
import cn.softeem.xzms.entity.HousetbExample;
import cn.softeem.xzms.entity.Orderdetailtb;
import cn.softeem.xzms.entity.OrderdetailtbExample;
import cn.softeem.xzms.entity.Ordertb;
import cn.softeem.xzms.entity.OrdertbExample;
import cn.softeem.xzms.entity.Usertb;
import cn.softeem.xzms.entity.UsertbExample;
import cn.softeem.xzms.service.HouseService;
import cn.softeem.xzms.service.OrderService;
import cn.softeem.xzms.service.OrderdetailService;
import cn.softeem.xzms.service.UserService;
import cn.softeem.xzms.vo.PageVo;

@Controller
public class UserContorller {

	@Autowired
	UserService userService;
	@Autowired
	OrderService orderService;
	@Autowired
	OrderdetailService orderdetailService;
	@Autowired
	HouseService houseService;
	//����
	@RequestMapping("/login.action")
	public String login(String tel,String password,HttpSession session,Model model){
		
		UsertbExample usertbExample = new UsertbExample();
		UsertbExample.Criteria criteria = usertbExample.createCriteria();
		criteria.andTelEqualTo(tel);
		criteria.andUserpwdEqualTo(password);
		
		List<Usertb> userList = userService.selectByExample(usertbExample);
		
		if(userList.size() != 0){
			session.setAttribute("user", userList.get(0));
		}else{
			model.addAttribute("msg","�޴��û�!");
			return "forward:login.jsp";
		}
		
		return "forward:index.jsp";
		
	}
	
	//ע��
	@RequestMapping("/reg.action")
	public String reg(String usename,String password,String tel,String bithday,String sex,Model model) throws ParseException{
		//�ж��Ƿ�ͬ��
		UsertbExample usertbExample = new UsertbExample();
		UsertbExample.Criteria criteria = usertbExample.createCriteria();
		criteria.andUsernameEqualTo(usename);
		List<Usertb> userList = userService.selectByExample(usertbExample);
		//��ʾ��Ϣ
		String msg = "";
		if(userList.size() > 0){
			msg = "ע��ʧ��!����ͬ�����û�!";
			model.addAttribute("msg", msg);
			return "forward:reg.jsp";
		}
		//��������
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date birth = sdf.parse(bithday);
		Date now = new Date();
		long age = (now.getTime() - birth.getTime())/1000/60/60/24/365;
		//�����Ա�
		int isex = -1;
		if(sex.equals("��")){
			isex = 0;
		}else{
			isex = 1;
		}
		Usertb user = new Usertb();
		user.setUsername(usename);
		user.setUserpwd(password);
		user.setTel(tel);
		user.setSex(isex);
		user.setAge((int)age);
		user.setRoleid(2);
		
		userService.insert(user);
		msg = "ע��ɹ�!";
		model.addAttribute("msg", msg);
		return "forward:login.jsp";
		
	}
	
	//��ʾ��Ϣ	
	@RequestMapping("/tousermessage.action")
	public String tousermessage(int id,HttpServletRequest request){
		
		//����Ϣ
		Usertb user = userService.selectByPrimaryKey(id);
		request.setAttribute("user", user);
		
	    return "user/message";
		/*return "forward:/WEB-INF/user/message.jsp";*/
	}
	@RequestMapping("/updateMsg.action")
	public String updateMsg(Usertb user,HttpServletRequest request){
		
		
		
		String sex = request.getParameter("updatesex");
		if(sex.equals("��")){
			user.setSex(0);
		}else if(sex.equals("Ů")){
			user.setSex(1);
		}
		HttpSession session = request.getSession();
		Usertb oldUser = (Usertb) session.getAttribute("user");
		
		List<Usertb> userList = userService.selectByExample(null);
		for(Usertb userL : userList){
			if(user.getUsername().equals(oldUser.getUsername())){
				break;
			}
			if(userL.getUsername().equals(user.getUsername())){
				request.setAttribute("msg", "������ͬ�û������û�!�޸�ʧ��!");
				return "forward:tousermessage.action?id=" + user.getId() + "";
			}
		}
		userService.updateByPrimaryKey(user);
		request.setAttribute("msg", "�޸ĳɹ�!");
		return "forward:tousermessage.action?id=" + user.getId() + "";
		
	}
	
	//������ѯ
	@RequestMapping("/quertOrder.action")
	public String quertOrder(Model model, 
			@RequestParam(value = "pageNow", required = true) int pageNow,HttpServletRequest request){
		//��װ��ѯ����
				OrdertbExample orderExample = new OrdertbExample();
				OrdertbExample.Criteria criteria = orderExample.createCriteria();
				HttpSession session = request.getSession();
				Usertb user = (Usertb) session.getAttribute("user");
				criteria.andUseidEqualTo(user.getId());
				
				// ÿҳ��ʾ����
				int pageRow = 4;
				int row = orderService.countByExample(orderExample); //��ѯ�ܼ�¼��
				PageVo pageVo = new PageVo(pageRow, pageNow, row);
				orderExample.setLeftLimit(pageVo.getStartRow()); // ��ʼ����
				orderExample.setLimitSize(pageRow);
				
				//��ѯ���Է��ϵ����ķ�Դ
				List<Ordertb> orderList = orderService.selectByExample(orderExample);
				
			
				
				//�������û�
				List<Usertb> userList = userService.selectByExample(null);
				
				model.addAttribute("pageVo", pageVo);
				model.addAttribute("orderList", orderList);
				model.addAttribute("userList", userList);
				
				return "user/order";
		
	}
	
	
	
	//�������飬ʹ��Ajax����
	@RequestMapping("/queryDetail.action")
	public @ResponseBody JSONObject queryDetail(HttpServletRequest request,HttpServletResponse response) throws IOException{
		
		int iorderid = Integer.parseInt(request.getParameter("orderid"));
		//��װ��ѯ����
		OrderdetailtbExample orderdetailExample = new OrderdetailtbExample();
		OrderdetailtbExample.Criteria criteria = orderdetailExample.createCriteria();
		criteria.andUseridEqualTo(iorderid);
		
		List<Orderdetailtb> orderdetailList = orderdetailService.selectByExample(orderdetailExample);
		
		
		//�鷿Դ��Ϣ
		//��װ��ѯ����
		HousetbExample houseExample = new HousetbExample();
		HousetbExample.Criteria criteria2 = houseExample.createCriteria();
		criteria2.andIdEqualTo(orderdetailList.get(0).getHouseid());
		List<Housetb> houseList = houseService.selectByExample(houseExample);
		
		//���ҷ�����Ϣ
		int mastid = orderdetailList.get(0).getOrderid();
		UsertbExample usertbExample = new UsertbExample();
		UsertbExample.Criteria criteria3 = usertbExample.createCriteria();
		criteria3.andIdEqualTo(mastid);
		Usertb mast = userService.selectByPrimaryKey(mastid);
		
		DateFormat df = new SimpleDateFormat("yyyy��MM��dd�� hh:mm:ss");
		String startTime = df.format(orderdetailList.get(0).getStarttime());
		String endTime = df.format(orderdetailList.get(0).getEndtime());
		//���ܽ��
		int realuseDate = 0;
		double useDate = (orderdetailList.get(0).getEndtime().getTime() - orderdetailList.get(0).getStarttime().getTime())/1000/60/60/24;
		
		if(useDate == (int)useDate){
			realuseDate = (int)useDate;
		}else{
			realuseDate = (int)useDate + 1;
		}
		//����ס�ĵص�һ��Ľ��
		BigDecimal onemoney = houseList.get(0).getPrice();
		
		double Allmoney = onemoney.doubleValue() *  realuseDate;
		
		/*PrintWriter out = response.getWriter();*/
		JSONObject object = new JSONObject();
		object.put("housepic", houseList.get(0).getImg());
		object.put("mastname", mast.getUsername());
		object.put("tel", mast.getTel());
		object.put("price", Allmoney);
		object.put("startDate", startTime);
		object.put("startDate", endTime);
		System.out.println(object);
		/*out.print("[" + object + "]");*/
		
		return object;
	}
	
	//����
	@RequestMapping("/pay.action")
	public String pay(@RequestParam(value = "houseId", required = true) int houseId,Model model){
		
		HousetbExample houseExample = new HousetbExample();
		HousetbExample.Criteria criteria2 = houseExample.createCriteria();
		criteria2.andIdEqualTo(houseId);
		List<Housetb> houseList = houseService.selectByExample(houseExample);
		model.addAttribute("houseList", houseList);
		
		System.out.println(houseId);
		return "forward:WEB-INF/user/pay.jsp";
		
	}
	
}
