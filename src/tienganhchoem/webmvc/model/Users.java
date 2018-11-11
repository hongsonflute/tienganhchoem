package tienganhchoem.webmvc.model;

public class Users {
	private String user_id;
	private String user_fullname;
	private String user_email;
	private String user_name;
	private String user_password;
	private int user_roleid;
	private String user_address;
	private String user_about;
	private int user_age;
	private String user_city;
	private String user_country;
	private String user_phone;
	private int user_sex;
	
	public Users()
	{
		
	}
	public Users(String user_id, String user_fullname, String user_email, String user_name, String user_password,
			int user_roleid, String user_address, String user_about, int user_age, String user_city,
			String user_country) {
		super();
		this.user_id = user_id;
		this.user_fullname = user_fullname;
		this.user_email = user_email;
		this.user_name = user_name;
		this.user_password = user_password;
		this.user_roleid = user_roleid;
		this.user_address = user_address;
		this.user_about = user_about;
		this.user_age = user_age;
		this.user_city = user_city;
		this.user_country = user_country;
	}

	public Users(String user_fullname, String user_email, String user_name, String user_password,int user_roleid) {
		super();
		this.user_fullname = user_fullname;
		this.user_email = user_email;
		this.user_name = user_name;
		this.user_password = user_password;
		this.user_roleid=user_roleid;
	}
	
	

	public Users(String user_fullname, String user_email, String user_address, String user_about, int user_age,
			String user_city, String user_country) {
		super();
		this.user_fullname = user_fullname;
		this.user_email = user_email;
		this.user_address = user_address;
		this.user_about = user_about;
		this.user_age = user_age;
		this.user_city = user_city;
		this.user_country = user_country;
	}
	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public String getUser_fullname() {
		return user_fullname;
	}


	public void setUser_fullname(String user_fullname) {
		this.user_fullname = user_fullname;
	}


	public String getUser_email() {
		return user_email;
	}


	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}


	public String getUser_name() {
		return user_name;
	}


	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}


	public String getUser_password() {
		return user_password;
	}


	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}


	public int getUser_roleid() {
		return user_roleid;
	}


	public void setUser_roleid(int user_roleid) {
		this.user_roleid = user_roleid;
	}
	public String getUser_address() {
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	public String getUser_about() {
		return user_about;
	}
	public void setUser_about(String user_about) {
		this.user_about = user_about;
	}
	public int getUser_age() {
		return user_age;
	}
	public void setUser_age(int user_age) {
		this.user_age = user_age;
	}
	public String getUser_city() {
		return user_city;
	}
	public void setUser_city(String user_city) {
		this.user_city = user_city;
	}
	public String getUser_country() {
		return user_country;
	}
	public void setUser_country(String user_country) {
		this.user_country = user_country;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public int getUser_sex() {
		return user_sex;
	}
	public void setUser_sex(int user_sex) {
		this.user_sex = user_sex;
	}
	
	
}
