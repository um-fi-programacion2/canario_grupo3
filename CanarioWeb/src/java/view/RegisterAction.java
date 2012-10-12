package view;

import java.sql.Date;

import dao.RegisterDao;
import model.Register;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {

	private static final long serialVersionUID = 908606616890722294L;
	private String emailId, password, name, cellNo, website;
	private Date birthDate;

	private Long id;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCellNo() {
		return cellNo;
	}

	public void setCellNo(String cellNo) {
		this.cellNo = cellNo;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public RegisterAction() {
	}

	public String execute() throws Exception {

		Register Rgst = new Register();
		Rgst.setCellNo(cellNo);
		Rgst.setWebsite(website);
		Rgst.setBirthDate(birthDate);
		Rgst.setEmailId(emailId);

		Rgst.setName(name);
		Rgst.setPassword(password);

		if (RegisterDao.registerUser(Rgst))
			return "success";
		else
			return "fail";
	}
}
