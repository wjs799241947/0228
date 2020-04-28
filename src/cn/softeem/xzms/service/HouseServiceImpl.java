package cn.softeem.xzms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.softeem.xzms.entity.Housetb;
import cn.softeem.xzms.entity.HousetbExample;
import cn.softeem.xzms.mapper.HousetbMapper;
@Service
public class HouseServiceImpl implements HouseService{

	@Autowired
	HousetbMapper housetbMapper; 
	
	@Override
	public int countByExample(HousetbExample example) {
		return housetbMapper.countByExample(example);
	}

	@Override
	public int deleteByExample(HousetbExample example) {
		return 0;
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
		return 0;
	}

	@Override
	public int insert(Housetb record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(Housetb record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Housetb> selectByExample(HousetbExample example) {
		// TODO Auto-generated method stub
		return housetbMapper.selectByExample(example);
	}

	@Override
	public Housetb selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByExampleSelective(Housetb record, HousetbExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByExample(Housetb record, HousetbExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKeySelective(Housetb record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Housetb record) {
		// TODO Auto-generated method stub
		return 0;
	}

}
