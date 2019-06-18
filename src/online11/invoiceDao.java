package online11;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class invoiceDao {
JdbcTemplate template;    
    
	public invoiceDao(DataSource datasource) {
		template=new JdbcTemplate(datasource);
	}
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}    
	public int add(invoiceData p){    
	    String sql="insert into itemsordered values("+p.getInvoice_id()+",'"+p.getItemname()+"',"+p.getItem_price()+","+p.getItem_quantity()+","+p.getItem_id()+","+"now()"+",'"+p.getcustomername()+"')";    
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
//	public List<int> getitemnames(){    
//	    return template.query("select itemname from itemsordered",new RowMapper<int>(){    
//	        public int mapRow(ResultSet rs, int row) throws SQLException {    
//	            int e=rs.getInt(1);            
//	            return e;    
//	        }    
//	    });    
	    
	//}
	public List<invoiceData> getinvoices(){    
	    return template.query("select invoiceid,customername,sum(itemprice) as grandtotal,data_and_time from itemsordered group by invoiceid",new RowMapper<invoiceData>(){    
	        public invoiceData mapRow(ResultSet rs, int row) throws SQLException {    
	            invoiceData e=new invoiceData();    
	            e.setInvoice_id(rs.getInt(1));    
	            e.setcustomername(rs.getString(2));    
	            e.setGrand_total(rs.getInt(3)); 
	            e.setDate_and_time(rs.getString(4));
	            return e;    
	        }    
	    });    
	    
	}
	public List<invoiceData> invoicelast(){    
	    return template.query("SELECT MAX(INVOICEID) AS INVOICEID FROM ITEMSORDERED",new RowMapper<invoiceData>(){    
	        public invoiceData mapRow(ResultSet rs, int row) throws SQLException {    
	            invoiceData e=new invoiceData();    
	            e.setInvoice_id(rs.getInt(1));         
	            return e;    
	        }    
	    });    
	}
}
