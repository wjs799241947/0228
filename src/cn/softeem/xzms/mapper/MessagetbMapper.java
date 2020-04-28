package cn.softeem.xzms.mapper;

import cn.softeem.xzms.entity.Messagetb;
import cn.softeem.xzms.entity.MessagetbExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MessagetbMapper {
    int countByExample(MessagetbExample example);

    int deleteByExample(MessagetbExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Messagetb record);

    int insertSelective(Messagetb record);

    List<Messagetb> selectByExample(MessagetbExample example);

    Messagetb selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Messagetb record, @Param("example") MessagetbExample example);

    int updateByExample(@Param("record") Messagetb record, @Param("example") MessagetbExample example);

    int updateByPrimaryKeySelective(Messagetb record);

    int updateByPrimaryKey(Messagetb record);
}