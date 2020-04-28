package cn.softeem.xzms.entity;

import java.util.Date;

public class Reportreplytb {

	private int id;
	private int useid;
	private int reportid;
	private String body;
	private Date time;
	private String remark;
	public Reportreplytb(int id, int useid, int reportid, String body, Date time, String remark) {
		super();
		this.id = id;
		this.useid = useid;
		this.reportid = reportid;
		this.body = body;
		this.time = time;
		this.remark = remark;
	}
	public Reportreplytb(int useid, int reportid, String body, Date time, String remark) {
		super();
		this.useid = useid;
		this.reportid = reportid;
		this.body = body;
		this.time = time;
		this.remark = remark;
	}
	public Reportreplytb() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUseid() {
		return useid;
	}
	public void setUseid(int useid) {
		this.useid = useid;
	}
	public int getReportid() {
		return reportid;
	}
	public void setReportid(int reportid) {
		this.reportid = reportid;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	@Override
	public String toString() {
		return "ReportreplyTB [id=" + id + ", useid=" + useid + ", reportid=" + reportid + ", body=" + body + ", time="
				+ time + ", remark=" + remark + "]";
	}
	
	
	
}
