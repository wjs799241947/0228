package cn.softeem.xzms.mapper;

import cn.softeem.xzms.entity.Usertb;
import cn.softeem.xzms.entity.UsertbExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UsertbMapper {
    int countByExample(UsertbExample example);

    int deleteByExample(UsertbExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Usertb record);

    int insertSelective(Usertb record);

    List<Usertb> selectByExample(UsertbExample example);

    Usertb selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Usertb record, @Param("example") UsertbExample example);

    int updateByExample(@Param("record") Usertb record, @Param("example") UsertbExample example);

    int updateByPrimaryKeySelective(Usertb record);

    int updateByPrimaryKey(Usertb record);
}