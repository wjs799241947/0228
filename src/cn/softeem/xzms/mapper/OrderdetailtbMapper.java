package cn.softeem.xzms.mapper;

import cn.softeem.xzms.entity.Orderdetailtb;
import cn.softeem.xzms.entity.OrderdetailtbExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OrderdetailtbMapper {
    int countByExample(OrderdetailtbExample example);

    int deleteByExample(OrderdetailtbExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Orderdetailtb record);

    int insertSelective(Orderdetailtb record);

    List<Orderdetailtb> selectByExample(OrderdetailtbExample example);

    Orderdetailtb selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Orderdetailtb record, @Param("example") OrderdetailtbExample example);

    int updateByExample(@Param("record") Orderdetailtb record, @Param("example") OrderdetailtbExample example);

    int updateByPrimaryKeySelective(Orderdetailtb record);

    int updateByPrimaryKey(Orderdetailtb record);
}