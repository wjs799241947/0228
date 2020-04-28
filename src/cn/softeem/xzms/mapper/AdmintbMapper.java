package cn.softeem.xzms.mapper;

import cn.softeem.xzms.entity.Admintb;
import cn.softeem.xzms.entity.AdmintbExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AdmintbMapper {
    int countByExample(AdmintbExample example);

    int deleteByExample(AdmintbExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Admintb record);

    int insertSelective(Admintb record);

    List<Admintb> selectByExample(AdmintbExample example);

    Admintb selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Admintb record, @Param("example") AdmintbExample example);

    int updateByExample(@Param("record") Admintb record, @Param("example") AdmintbExample example);

    int updateByPrimaryKeySelective(Admintb record);

    int updateByPrimaryKey(Admintb record);
}