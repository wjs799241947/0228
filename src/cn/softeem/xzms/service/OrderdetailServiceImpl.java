package cn.softeem.xzms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.softeem.xzms.entity.Orderdetailtb;
import cn.softeem.xzms.entity.OrderdetailtbExample;
import cn.softeem.xzms.mapper.OrderdetailtbMapper;
@Service
public class OrderdetailServiceImpl implements OrderdetailService{

	@Autowired
	private OrderdetailtbMapper ordertailMapper;
	
	@Override
	public int countByExample(OrderdetailtbExample example) {
		// TODO Auto-generated method stub
		return ordertailMapper.countByExample(example);
	}

	@Override
	public int deleteByExample(OrderdetailtbExample example) {
		// TODO Auto-generated method stub
		return ordertailMapper.deleteByExample(example);
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return ordertailMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Orderdetailtb record) {
		// TODO Auto-generated method stub
		return ordertailMapper.insert(record);
	}

	@Override
	public int insertSelective(Orderdetailtb record) {
		// TODO Auto-generated method stub
		return ordertailMapper.insertSelective(record);
	}

	@Override
	public List<Orderdetailtb> selectByExample(OrderdetailtbExample example) {
		// TODO Auto-generated method stub
		return ordertailMapper.selectByExample(example);
	}

	@Override
	public Orderdetailtb selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return ordertailMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByExampleSelective(Orderdetailtb record, OrderdetailtbExample example) {
		// TODO Auto-generated method stub
		return ordertailMapper.updateByExampleSelective(record, example);
	}

	@Override
	public int updateByExample(Orderdetailtb record, OrderdetailtbExample example) {
		// TODO Auto-generated method stub
		return ordertailMapper.updateByExample(record, example);
	}

	@Override
	public int updateByPrimaryKeySelective(Orderdetailtb record) {
		// TODO Auto-generated method stub
		return ordertailMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Orderdetailtb record) {
		// TODO Auto-generated method stub
		return ordertailMapper.updateByPrimaryKey(record);
	}

}
