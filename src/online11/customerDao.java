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
	public int update(itemData p){    
	    String sql="update items set item_name='"+p.getItemname()+"', item_price="+p.getItemprice()+",item_discription='"+p.getItemdisc()+",item_key='"+p.getItemkey()+",item_uom='"+p.getItemuom()+"' where itemid="+p.getItemid()+"";    
	    return template.update(sql);    
	}    
	public int delete(int id){    
	    String sql="delete from items where itemid="+id+"";    
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
}
