package online11;

import org.springframework.jdbc.core.JdbcTemplate;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

//import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class itemDao {
	JdbcTemplate template;    
    
	public itemDao(DataSource datasource) {
		template=new JdbcTemplate(datasource);
	}
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}    
	public int add(itemData p){    
	    String sql="insert into items(item_name,item_price,item_description,item_key,item_uom) values('"+p.getItemname()+"',"+p.getItemprice()+",'"+p.getItemdisc()+"','"+p.getItemkey()+"','"+p.getItemuom()+"')";    
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
	public List<itemData> getitems(){    
	    return template.query("select * from items",new RowMapper<itemData>(){    
	        public itemData mapRow(ResultSet rs, int row) throws SQLException {    
	            itemData e=new itemData();    
	            e.setItemid(rs.getInt(1));    
	            e.setItemname(rs.getString(2));    
	            e.setItemprice(rs.getInt(3));    
	            e.setItemdisc(rs.getString(4));    
	            e.setItemkey(rs.getString(5));    
	            e.setItemuom(rs.getString(6));    
	            return e;    
	        }    
	    });    
	    
	}
	
}
