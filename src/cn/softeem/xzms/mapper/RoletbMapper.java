package cn.softeem.xzms.mapper;

import cn.softeem.xzms.entity.Roletb;
import cn.softeem.xzms.entity.RoletbExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RoletbMapper {
    int countByExample(RoletbExample example);

    int deleteByExample(RoletbExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Roletb record);

    int insertSelective(Roletb record);

    List<Roletb> selectByExample(RoletbExample example);

    Roletb selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Roletb record, @Param("example") RoletbExample example);

    int updateByExample(@Param("record") Roletb record, @Param("example") RoletbExample example);

    int updateByPrimaryKeySelective(Roletb record);

    int updateByPrimaryKey(Roletb record);
}