package cn.softeem.xzms.entity;

public class Roletb {
    private Integer id;

    private String rolename;

    private String roleinfo;

    private String remark;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename == null ? null : rolename.trim();
    }

    public String getRoleinfo() {
        return roleinfo;
    }

    public void setRoleinfo(String roleinfo) {
        this.roleinfo = roleinfo == null ? null : roleinfo.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}