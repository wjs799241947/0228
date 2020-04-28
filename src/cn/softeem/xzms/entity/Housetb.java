package cn.softeem.xzms.entity;

import java.math.BigDecimal;

public class Housetb {
    private Integer id;

    private String title;

    private BigDecimal price;

    private String address;

    private Integer area;

    private String houseinfo;

    private Integer housetypeid;

    private Integer userid;

    private Integer status;

    private String img;

    private String remark;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public Integer getArea() {
        return area;
    }

    public void setArea(Integer area) {
        this.area = area;
    }

    public String getHouseinfo() {
        return houseinfo;
    }

    public void setHouseinfo(String houseinfo) {
        this.houseinfo = houseinfo == null ? null : houseinfo.trim();
    }

    public Integer getHousetypeid() {
        return housetypeid;
    }

    public void setHousetypeid(Integer housetypeid) {
        this.housetypeid = housetypeid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img == null ? null : img.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

	@Override
	public String toString() {
		return "Housetb [id=" + id + ", title=" + title + ", price=" + price + ", address=" + address + ", area=" + area
				+ ", houseinfo=" + houseinfo + ", housetypeid=" + housetypeid + ", userid=" + userid + ", status="
				+ status + ", img=" + img + ", remark=" + remark + "]";
	}
    
}