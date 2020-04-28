package cn.softeem.xzms.mapper;

import cn.softeem.xzms.entity.Ordertb;
import cn.softeem.xzms.entity.OrdertbExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OrdertbMapper {
    int countByExample(OrdertbExample example);

    int deleteByExample(OrdertbExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Ordertb record);

    int insertSelective(Ordertb record);

    List<Ordertb> selectByExample(OrdertbExample example);

    Ordertb selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Ordertb record, @Param("example") OrdertbExample example);

    int updateByExample(@Param("record") Ordertb record, @Param("example") OrdertbExample example);

    int updateByPrimaryKeySelective(Ordertb record);

    int updateByPrimaryKey(Ordertb record);
}