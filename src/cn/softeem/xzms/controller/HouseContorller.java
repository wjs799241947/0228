package cn.softeem.xzms.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.softeem.xzms.entity.Housetb;
import cn.softeem.xzms.entity.HousetbExample;
import cn.softeem.xzms.entity.Orderdetailtb;
import cn.softeem.xzms.entity.OrderdetailtbExample;
import cn.softeem.xzms.entity.Ordertb;
import cn.softeem.xzms.service.HouseService;
import cn.softeem.xzms.service.OrderService;
import cn.softeem.xzms.service.OrderdetailService;
import cn.softeem.xzms.vo.PageVo;

@Controller
public class HouseContorller {

	@Autowired
  private HouseService houseService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private OrderdetailService orderdetailService;
	
	@RequestMapping("/queryBylocal.action")
	public String queryBylocal(Model model, 
			@RequestParam(value = "pageNow", required = true) int pageNow,String address,HttpServletRequest request){
		//��װ��ѯ����
		HousetbExample housetbExample = new HousetbExample();
		HousetbExample.Criteria criteria = housetbExample.createCriteria();
		System.out.println(address);
		if(address != null && !address.equals("")){
			criteria.andAddressLike("%" + address + "%");
		}
		
		// ÿҳ��ʾ����
		int pageRow = 4;
		int row = houseService.countByExample(housetbExample); //��ѯ�ܼ�¼��
		PageVo pageVo = new PageVo(pageRow, pageNow, row);
		housetbExample.setLeftLimit(pageVo.getStartRow()); // ��ʼ����
		housetbExample.setLimitSize(pageRow);
		
		//��ѯ���Է��ϵ����ķ�Դ
		List<Housetb> houseList = houseService.selectByExample(housetbExample);
		
		String startDatestr = request.getParameter("startDate");
		String endDatestr = request.getParameter("startDate");
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date startDate = null;
		Date endDate = null;
		try {
			startDate = format.parse(startDatestr);
			endDate = format.parse(endDatestr);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println(startDate);
		System.out.println(endDate);
		
		if((startDate != null && endDate != null) || (!startDate.equals("") && !endDate.equals(""))){
			
			//ɸѡ
			//��ѯ���ж�����
			List<Ordertb> orderList = orderService.selectByExample(null);
			
			List<Orderdetailtb> orderdetailList = null;
			//��ѯ���ж�����ȡ������״̬��Ϊ2�ģ�����id��ѯ�������飬����orderdetailList
			
			
			
		for(int i = 0;i < orderList.size();i++){
			if(orderList.get(i).getStatus() != 2){
				OrderdetailtbExample orderdetailtbExample = new OrderdetailtbExample();
				OrderdetailtbExample.Criteria  criteria2 = orderdetailtbExample.createCriteria();
				criteria2.andOrderidEqualTo(orderList.get(i).getId());
				
				List<Orderdetailtb> orderdetailList2 = orderdetailService.selectByExample(orderdetailtbExample);
				System.out.println(orderdetailList2);
				for(int index = 0;index < orderdetailList2.size();index++){
					orderdetailList.add(orderdetailList2.get(index));
		
				}
			}
			
		if(orderdetailList != null){	
		for(int x = 0;x < houseList.size();x++){
			
			for(int y = 0;y < orderdetailList.size();y++){
				if(houseList.get(x).getId() == orderdetailList.get(y).getHouseid()){
					if(!(startDate.before(orderdetailList.get(y).getStarttime()) && endDate.before(orderdetailList.get(y).getStarttime()))
					|| startDate.after(orderdetailList.get(y).getEndtime())	&&	endDate.after(orderdetailList.get(y).getEndtime())){
						houseList.remove(x);
					}
					
				}
				
			}
			
		}
		
		}
		
		
		}
		
		
			
		}
		
		model.addAttribute("address",address);
		model.addAttribute("pageVo", pageVo);
		model.addAttribute("houseList", houseList);
		
		
		return "forward:selecthouse.jsp";
		
		
		
	}
	
}
