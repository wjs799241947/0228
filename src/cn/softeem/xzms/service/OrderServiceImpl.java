package cn.softeem.xzms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.softeem.xzms.entity.Ordertb;
import cn.softeem.xzms.entity.OrdertbExample;
import cn.softeem.xzms.mapper.OrdertbMapper;
@Service
public class OrderServiceImpl implements OrderService{

	
	@Autowired
	private OrdertbMapper ordertbMapper;
	
	@Override
	public int countByExample(OrdertbExample example) {
		// TODO Auto-generated method stub
		return ordertbMapper.countByExample(example);
	}

	@Override
	public int deleteByExample(OrdertbExample example) {
		// TODO Auto-generated method stub
		return ordertbMapper.deleteByExample(example);
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return ordertbMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Ordertb record) {
		// TODO Auto-generated method stub
		return ordertbMapper.insert(record);
	}

	@Override
	public int insertSelective(Ordertb record) {
		// TODO Auto-generated method stub
		return ordertbMapper.insertSelective(record);
	}

	@Override
	public List<Ordertb> selectByExample(OrdertbExample example) {
		// TODO Auto-generated method stub
		return ordertbMapper.selectByExample(example);
	}

	@Override
	public Ordertb selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return ordertbMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByExampleSelective(Ordertb record, OrdertbExample example) {
		// TODO Auto-generated method stub
		return ordertbMapper.updateByExampleSelective(record, example);
	}

	@Override
	public int updateByExample(Ordertb record, OrdertbExample example) {
		// TODO Auto-generated method stub
		return ordertbMapper.updateByExample(record, example);
	}

	@Override
	public int updateByPrimaryKeySelective(Ordertb record) {
		// TODO Auto-generated method stub
		return updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Ordertb record) {
		// TODO Auto-generated method stub
		return ordertbMapper.updateByPrimaryKey(record);
	}

}
