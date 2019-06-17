package online11;

public class customerData {
	int customer_id;
	
	String customer_name;
	String customer_firstname;
	String customer_lastname;
	String customer_phno;
	String customer_dob;
	String customer_emailid;
	int customer_fax;
	String customer_address;
	String customer_city;
	String customer_state;
	int customer_pin;
	public customerData() {
		
	}
	
	public int getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}
	
	@Override
	public String toString() {
		return "customerData [customer_name=" + customer_name + ", customer_firstname=" + customer_firstname
				+ ", customer_lastname=" + customer_lastname + ", customer_phno=" + customer_phno + ", customer_dob="
				+ customer_dob + ", customer_emailid=" + customer_emailid + ", customer_fax=" + customer_fax
				+ ", customer_address=" + customer_address + ", customer_city=" + customer_city + ", customer_state="
				+ customer_state + ", customer_pin=" + customer_pin + "]";
	}
	public customerData(String customer_name, String customer_firstname, String customer_lastname, String customer_phno,
			String customer_dob, String customer_emailid, int customer_fax, String customer_address,
			String customer_city, String customer_state, int customer_pin) {
		super();
		this.customer_name = customer_name;
		this.customer_firstname = customer_firstname;
		this.customer_lastname = customer_lastname;
		this.customer_phno = customer_phno;
		this.customer_dob = customer_dob;
		this.customer_emailid = customer_emailid;
		this.customer_fax = customer_fax;
		this.customer_address = customer_address;
		this.customer_city = customer_city;
		this.customer_state = customer_state;
		this.customer_pin = customer_pin;
	}
	public String getCustomer_name() {
		return customer_name;
	}
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}
	public String getCustomer_firstname() {
		return customer_firstname;
	}
	public void setCustomer_firstname(String customer_firstname) {
		this.customer_firstname = customer_firstname;
	}
	public String getCustomer_lastname() {
		return customer_lastname;
	}
	public void setCustomer_lastname(String customer_lastname) {
		this.customer_lastname = customer_lastname;
	}
	public String getCustomer_phno() {
		return customer_phno;
	}
	public void setCustomer_phno(String customer_phno) {
		this.customer_phno = customer_phno;
	}
	public String getCustomer_dob() {
		return customer_dob;
	}
	public void setCustomer_dob(String customer_dob) {
		this.customer_dob = customer_dob;
	}
	public String getCustomer_emailid() {
		return customer_emailid;
	}
	public void setCustomer_emailid(String customer_emailid) {
		this.customer_emailid = customer_emailid;
	}
	public int getCustomer_fax() {
		return customer_fax;
	}
	public void setCustomer_fax(int customer_fax) {
		this.customer_fax = customer_fax;
	}
	public String getCustomer_address() {
		return customer_address;
	}
	public void setCustomer_address(String customer_address) {
		this.customer_address = customer_address;
	}
	public String getCustomer_city() {
		return customer_city;
	}
	public void setCustomer_city(String customer_city) {
		this.customer_city = customer_city;
	}
	public String getCustomer_state() {
		return customer_state;
	}
	public void setCustomer_state(String customer_state) {
		this.customer_state = customer_state;
	}
	public int getCustomer_pin() {
		return customer_pin;
	}
	public void setCustomer_pin(int customer_pin) {
		this.customer_pin = customer_pin;
	}
}
