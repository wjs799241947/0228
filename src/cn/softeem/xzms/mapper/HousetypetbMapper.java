package cn.softeem.xzms.mapper;

import cn.softeem.xzms.entity.Housetypetb;
import cn.softeem.xzms.entity.HousetypetbExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface HousetypetbMapper {
    int countByExample(HousetypetbExample example);

    int deleteByExample(HousetypetbExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Housetypetb record);

    int insertSelective(Housetypetb record);

    List<Housetypetb> selectByExample(HousetypetbExample example);

    Housetypetb selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Housetypetb record, @Param("example") HousetypetbExample example);

    int updateByExample(@Param("record") Housetypetb record, @Param("example") HousetypetbExample example);

    int updateByPrimaryKeySelective(Housetypetb record);

    int updateByPrimaryKey(Housetypetb record);
}