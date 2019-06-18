package online11;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class customerDao {
JdbcTemplate template;    
    
	public customerDao(DataSource datasource) {
		template=new JdbcTemplate(datasource);
	}
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}    
	public int add(customerData p){    
	    String sql="insert into customers(customer_name,customer_firstname,customer_lastname,customer_phno,customer_dob,customer_emailid,customer_fax,customer_address,customer_city,customer_state,customer_pin) values('"+p.getCustomer_name()+"','"+p.getCustomer_firstname()+"','"+p.getCustomer_lastname()+"','"+p.getCustomer_phno()+"','"+p.getCustomer_dob()+"','"+p.getCustomer_emailid()+"',"+p.getCustomer_fax()+",'"+p.getCustomer_address()+"','"+p.getCustomer_city()+"','"+p.getCustomer_state()+"',"+p.getCustomer_pin()+")";    
	    System.out.println("inserted into the table"+ sql);
	    System.out.println(template);
	    int a=template.update(sql);
	    return a;    
	}    
	public int update(customerData p){    
	    String sql="update customers set customer_firstname='" + p.getCustomer_firstname() +"',customer_lastname='" + p.getCustomer_lastname() + "',customer_phno='" + p.getCustomer_phno() +"', customer_dob='"+ p.getCustomer_dob() + "', customer_emailid='" + p.getCustomer_emailid() + "', customer_fax=" + p.getCustomer_fax() + ", customer_address='" + p.getCustomer_address() + "', customer_city='" + p.getCustomer_city() + "', customer_state='"+ p.getCustomer_state() + "', customer_pin=" + p.getCustomer_pin()+" where customer_name='"+p.getCustomer_name()+"'" ;    
	    System.out.println("update:"+sql);
	    return template.update(sql);    
	}    
	public int delete(String id){    
	    String sql="delete from customers where customer_name='"+id+"'";    
	    return template.update(sql);    
	}    
	public List<customerData> getcustomers(){    
	    return template.query("select customerid,customer_name,customer_emailid,customer_phno from customers",new RowMapper<customerData>(){    
	        public customerData mapRow(ResultSet rs, int row) throws SQLException {    
	            customerData e=new customerData();    
	            e.setCustomer_id(rs.getInt(1));    
	            e.setCustomer_name(rs.getString(2));    
	            e.setCustomer_emailid(rs.getString(3));    
	            e.setCustomer_phno(rs.getString(4));       
	            return e;    
	        }    
	    });    
	    
	}
	
	public List<customerData> itemRetrival( String itemname ) {
		return template.query("select * from customers where customer_name ='"+itemname+"'",new RowMapper<customerData>(){    
	        public customerData mapRow(ResultSet rs, int row) throws SQLException {    
	            customerData e=new customerData();     
	            e.setCustomer_name(rs.getString(2));
	    		e.setCustomer_firstname(rs.getString(3));
	    		e.setCustomer_lastname(rs.getString(4));
	    		e.setCustomer_phno(rs.getString(5));
	    		e.setCustomer_dob(rs.getString(6));
	    		e.setCustomer_emailid(rs.getString(7));
	    		e.setCustomer_fax(rs.getInt(8));
	    		e.setCustomer_address(rs.getString(9));
	    		e.setCustomer_city(rs.getString(10));
	    		e.setCustomer_state(rs.getString(11));
	    		e.setCustomer_pin(rs.getInt(12));
	            return e;    
	        }    
	    });    
	}
}
