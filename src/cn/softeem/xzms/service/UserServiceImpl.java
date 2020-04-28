package cn.softeem.xzms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.softeem.xzms.entity.Usertb;
import cn.softeem.xzms.entity.UsertbExample;
import cn.softeem.xzms.mapper.UsertbMapper;
@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UsertbMapper usertbMapper; 
	
	@Override
	public int countByExample(UsertbExample example) {
		// TODO Auto-generated method stub
		return usertbMapper.countByExample(example);
	}

	@Override
	public int deleteByExample(UsertbExample example) {
		// TODO Auto-generated method stub
		return usertbMapper.deleteByExample(example);
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return usertbMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Usertb record) {
		// TODO Auto-generated method stub
		return usertbMapper.insert(record);
	}

	@Override
	public int insertSelective(Usertb record) {
		// TODO Auto-generated method stub
		return usertbMapper.insertSelective(record);
	}

	@Override
	public List<Usertb> selectByExample(UsertbExample example) {
		// TODO Auto-generated method stub
		return usertbMapper.selectByExample(example);
	}

	@Override
	public Usertb selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return usertbMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByExampleSelective(Usertb record, UsertbExample example) {
		// TODO Auto-generated method stub
		return usertbMapper.updateByExampleSelective(record, example);
	}

	@Override
	public int updateByExample(Usertb record, UsertbExample example) {
		// TODO Auto-generated method stub
		return usertbMapper.updateByExample(record, example);
	}

	@Override
	public int updateByPrimaryKeySelective(Usertb record) {
		// TODO Auto-generated method stub
		return usertbMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Usertb record) {
		// TODO Auto-generated method stub
		return usertbMapper.updateByPrimaryKey(record);
	}

}
