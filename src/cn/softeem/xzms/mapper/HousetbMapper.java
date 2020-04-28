package cn.softeem.xzms.mapper;

import cn.softeem.xzms.entity.Housetb;
import cn.softeem.xzms.entity.HousetbExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface HousetbMapper {
    int countByExample(HousetbExample example);

    int deleteByExample(HousetbExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Housetb record);

    int insertSelective(Housetb record);

    List<Housetb> selectByExample(HousetbExample example);

    Housetb selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Housetb record, @Param("example") HousetbExample example);

    int updateByExample(@Param("record") Housetb record, @Param("example") HousetbExample example);

    int updateByPrimaryKeySelective(Housetb record);

    int updateByPrimaryKey(Housetb record);
}