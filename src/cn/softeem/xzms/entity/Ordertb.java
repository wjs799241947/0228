package cn.softeem.xzms.entity;

import java.math.BigDecimal;
import java.util.Date;

public class Ordertb {
    private Integer id;

    private Integer useid;

    private Date time;

    private BigDecimal allmoney;

    private Integer status;

    private String remark;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUseid() {
        return useid;
    }

    public void setUseid(Integer useid) {
        this.useid = useid;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public BigDecimal getAllmoney() {
        return allmoney;
    }

    public void setAllmoney(BigDecimal allmoney) {
        this.allmoney = allmoney;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}