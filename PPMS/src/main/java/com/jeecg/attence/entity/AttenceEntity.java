package com.jeecg.attence.entity;

import java.math.BigDecimal;
import java.util.Date;
import java.lang.String;
import java.lang.Double;
import java.lang.Integer;
import java.math.BigDecimal;
import javax.xml.soap.Text;
import java.sql.Blob;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;
import javax.persistence.SequenceGenerator;
import org.jeecgframework.poi.excel.annotation.Excel;

/**   
 * @Title: Entity
 * @Description: 考勤统计
 * @author onlineGenerator
 * @date 2017-08-02 14:35:04
 * @version V1.0   
 *
 */
@Entity
@Table(name = "e_attence", schema = "")
@SuppressWarnings("serial")
public class AttenceEntity implements java.io.Serializable {
	/**主键*/
	private java.lang.String id;
	/**人员*/
	@Excel(name="人员")
	private java.lang.String fname;
	/**部门*/
	@Excel(name="部门")
	private java.lang.String fdept;
	/** 上班时间*/
	@Excel(name=" 上班时间")
	private java.lang.String fchkintime;
	/**下班时间*/
	@Excel(name="下班时间")
	private java.lang.String fchkouttime;
	/**考勤日期*/
	@Excel(name="考勤日期",format = "yyyy-MM-dd")
	private java.util.Date fchkdate;
	/**是否迟到*/
	@Excel(name="是否迟到")
	private java.lang.String fislate;
	/**加班时间*/
	@Excel(name="加班时间")
	private java.lang.String fovertime;
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  主键
	 */
	@Id
	@GeneratedValue(generator = "paymentableGenerator")
	@GenericGenerator(name = "paymentableGenerator", strategy = "uuid")
	@Column(name ="ID",nullable=false,length=36)
	public java.lang.String getId(){
		return this.id;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  主键
	 */
	public void setId(java.lang.String id){
		this.id = id;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  人员
	 */
	@Column(name ="FNAME",nullable=true,length=50)
	public java.lang.String getFname(){
		return this.fname;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  人员
	 */
	public void setFname(java.lang.String fname){
		this.fname = fname;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  部门
	 */
	@Column(name ="FDEPT",nullable=true,length=50)
	public java.lang.String getFdept(){
		return this.fdept;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  部门
	 */
	public void setFdept(java.lang.String fdept){
		this.fdept = fdept;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String   上班时间
	 */
	@Column(name ="FCHKINTIME",nullable=true,length=20)
	public java.lang.String getFchkintime(){
		return this.fchkintime;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String   上班时间
	 */
	public void setFchkintime(java.lang.String fchkintime){
		this.fchkintime = fchkintime;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  下班时间
	 */
	@Column(name ="FCHKOUTTIME",nullable=true,length=50)
	public java.lang.String getFchkouttime(){
		return this.fchkouttime;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  下班时间
	 */
	public void setFchkouttime(java.lang.String fchkouttime){
		this.fchkouttime = fchkouttime;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  考勤日期
	 */
	@Column(name ="FCHKDATE",nullable=true,length=50)
	public java.util.Date getFchkdate(){
		return this.fchkdate;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  考勤日期
	 */
	public void setFchkdate(java.util.Date fchkdate){
		this.fchkdate = fchkdate;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  是否迟到
	 */
	@Column(name ="FISLATE",nullable=true,length=20)
	public java.lang.String getFislate(){
		return this.fislate;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  是否迟到
	 */
	public void setFislate(java.lang.String fislate){
		this.fislate = fislate;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  加班时间
	 */
	@Column(name ="FOVERTIME",nullable=true,length=50)
	public java.lang.String getFovertime(){
		return this.fovertime;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  加班时间
	 */
	public void setFovertime(java.lang.String fovertime){
		this.fovertime = fovertime;
	}
}
