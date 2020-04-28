package cn.softeem.xzms.mapper;

import cn.softeem.xzms.entity.Reporttb;
import cn.softeem.xzms.entity.ReporttbExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ReporttbMapper {
    int countByExample(ReporttbExample example);

    int deleteByExample(ReporttbExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Reporttb record);

    int insertSelective(Reporttb record);

    List<Reporttb> selectByExample(ReporttbExample example);

    Reporttb selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Reporttb record, @Param("example") ReporttbExample example);

    int updateByExample(@Param("record") Reporttb record, @Param("example") ReporttbExample example);

    int updateByPrimaryKeySelective(Reporttb record);

    int updateByPrimaryKey(Reporttb record);
}