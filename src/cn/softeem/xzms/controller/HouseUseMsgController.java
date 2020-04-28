package cn.softeem.xzms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.softeem.xzms.entity.Usertb;
import cn.softeem.xzms.entity.UsertbExample;
import cn.softeem.xzms.service.UserService;
import cn.softeem.xzms.vo.PageVo;

@Controller
public class HouseUseMsgController {

	@Autowired
	UserService userService;
	
@RequestMapping("/houseUserMsg.action")
public String QueryHouseUserMsg(Model model, 
		@RequestParam(value = "pageNow", required = true) int pageNow){
	
	UsertbExample usertbExample = new UsertbExample();
	UsertbExample.Criteria criteria = usertbExample.createCriteria();
	criteria.andRoleidEqualTo(3);
	
	// 每页显示行数
			int pageRow = 4;
			int row = userService.countByExample(usertbExample); //查询总记录数
			PageVo pageVo = new PageVo(pageRow, pageNow, row);
			usertbExample.setLeftLimit(pageVo.getStartRow()); // 起始行数
			usertbExample.setLimitSize(pageRow);
	
	List<Usertb> userList = userService.selectByExample(usertbExample);
	model.addAttribute("pageVo", pageVo);
	model.addAttribute("houseuseList", userList);
	
	
	return "forward:/WEB-INF/user/houseusemessage.jsp";
    	


}
	
}
