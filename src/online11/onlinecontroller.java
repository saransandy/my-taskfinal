package online11;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import java.util.List;

import javax.servlet.http.Cookie;

//import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class onlinecontroller {
	@Autowired
	itemDao dao=ApplicationConfiguration.getitemDao();
	customerDao dao1=ApplicationConfiguration.getcustomerDao();
	invoiceDao dao2=ApplicationConfiguration.getinvoiceDao();
	String id=null;
	String user=null;
	
	@RequestMapping(value="/")
	public String welcome(Model m) {
		m.addAttribute("con", new itemData());
		return "index";
	}	
	@RequestMapping(value="/index.html")
	public String index(Model m) {
		m.addAttribute("con", new itemData());
		id=null;
		user=null;
		Cookie cookie = new Cookie("google.com", "");
        cookie.setMaxAge(0);
//        response.addCookie(cookie);
		return "index";
	}	
	@RequestMapping("/check")  
    public String check(Model m) {
		m.addAttribute("con", new itemData());
		if(id==null) 
			return "index";
		else
		return "items";
	}
	
	@RequestMapping("/customer")  
    public String customer(Model m) {
		m.addAttribute("con", new itemData());
		if(id==null) 
			return "index";
		else
		return "customers";
	}
	@RequestMapping("/invoice")  
    public String invoice(Model m) {
		m.addAttribute("con", new itemData());
		if(id==null) 
			return "index";
		else
		return "invoices";
	}
	@RequestMapping(value = "/Login", method = RequestMethod.POST)
	@ResponseBody
	public int Login(@RequestParam("custid") String id,@RequestParam("user") String user) {
		System.out.print("login");
		this.id=id;
		this.user=user;
		return 0;
		//return s;
	}
	@RequestMapping(value = "/additems", method = RequestMethod.POST)
	@ResponseBody
	public int additems(@RequestParam("no") int itemno,@RequestParam("itemname") String itemname,@RequestParam("price") int item_price,@RequestParam("desc") String item_desc,@RequestParam("key") String item_key,@RequestParam("uom") String item_uom) {
		System.out.print("sdfghjk");
		itemData col=new itemData(itemno,itemname,item_price,item_desc,item_key,item_uom);
		return dao.add(col);
		//return s;
	}
	@RequestMapping(value = "/deleteitems", method = RequestMethod.POST)
	@ResponseBody
	public int deleteitems(@RequestParam("itemname") String itemname) {
		System.out.print("sdfghjk");
		return dao.delete(itemname);
		//return s;
	}
	@RequestMapping(value = "/updateitems", method = RequestMethod.POST)
	@ResponseBody
	public int updateitems(@RequestParam("no") int itemno,@RequestParam("itemname") String itemname,@RequestParam("price") int item_price,@RequestParam("desc") String item_desc,@RequestParam("key") String item_key,@RequestParam("uom") String item_uom) {
		System.out.print("sdfghjk");
		itemData col=new itemData(itemno,itemname,item_price,item_desc,item_key,item_uom);
		return dao.update(col);
		//return s;
	}
	@RequestMapping(value = "/priceget", method = RequestMethod.POST)
	@ResponseBody
	public String priceget(@RequestParam("itemname") String itemname) {
		System.out.print("priceget:  ");
		String[] prices=itemname.split(",");
		String allprices="";
		for(int i=0;i<prices.length;i++) {
			List<itemData> l =  dao.price(prices[i]);
			itemData list = (itemData) l.get(0);
			System.out.println("List : " + list);
			int oneprice = list.getItemprice();
			allprices=allprices+oneprice;
			if(i<prices.length-1)
				allprices+=",";
		}
		System.out.print("price"+allprices);
		return allprices;
		//return s;
	}
	@RequestMapping(value = "/ItemsRetrival", method = RequestMethod.POST)
	@ResponseBody
	public List<itemData> ItemsRetrival() {
		System.out.print("ItemsRetrival");
		List<itemData> listofitem=dao.getitems();
		return listofitem;
		//return s;
	}
	
	@RequestMapping(value = "/Addingcustomer", method = RequestMethod.POST)
	@ResponseBody
	public int Addingcustomer(@RequestParam("name") String name,@RequestParam("firstname") String firstname, @RequestParam("lastname") String lastname,@RequestParam("phno") String phno,@RequestParam("dob") String dob,@RequestParam("email") String email,@RequestParam("fax") int fax,@RequestParam("address") String address,@RequestParam("city") String city,@RequestParam("state") String state,@RequestParam("pincode") int pincode) {
		customerData col=new customerData(name,firstname,lastname,phno,dob,email,fax,address,city,state,pincode);
		return dao1.add(col);
		//return s;
	}
	
	@RequestMapping(value = "/updatecustomer", method = RequestMethod.POST)
	@ResponseBody
	public int updatecustomer(@RequestParam("name") String name,@RequestParam("firstname") String firstname, @RequestParam("lastname") String lastname,@RequestParam("phno") String phno,@RequestParam("dob") String dob,@RequestParam("email") String email,@RequestParam("fax") int fax,@RequestParam("address") String address,@RequestParam("city") String city,@RequestParam("state") String state,@RequestParam("pincode") int pincode) {
		customerData col=new customerData(name,firstname,lastname,phno,dob,email,fax,address,city,state,pincode);
		return dao1.update(col);
		//return s;
	}
	
	@RequestMapping(value = "/ItemsRetrivalCustomers", method = RequestMethod.POST)
	@ResponseBody
	public List<customerData> ItemsRetrivalCustomers() {
		System.out.print("ItemsRetrival");
		List<customerData> listofcustomer=dao1.getcustomers();
		return listofcustomer;
		//return s;
	}
	
	@RequestMapping(value = "/ItemsRetrivalInvoice", method = RequestMethod.POST)
	@ResponseBody
	public List<invoiceData> ItemsRetrivalInvoice() {
		System.out.print("ItemsRetrival");
		List<invoiceData> listofinvoice=dao2.getinvoices();
		return listofinvoice;
		//return s;
	}
	
	@RequestMapping(value = "/InvoiceInsertion", method = RequestMethod.POST)
	@ResponseBody
	public int InvoiceInsertion(@RequestParam("itemnames") String itemnames,@RequestParam("itemprices") String itemprices,@RequestParam("itemquantities") String itemquans,@RequestParam("customer_name") String customersname) {
		System.out.print("ItemsRetrival");
		List<invoiceData> l=dao2.invoicelast();
		invoiceData list = (invoiceData) l.get(0);
		int invoiceidd=0;
		invoiceidd=list.getInvoice_id();
		System.out.println("invoice id: "+ invoiceidd);
		invoiceidd++;
		String[] name=itemnames.split(",");
		String[] price=itemprices.split(",");
		String[] quan=itemquans.split(",");
		for(int i=0;i<name.length;i++)
		{
			List<itemData> lis =  dao.itemRetrival(name[i]);
			itemData list1 = (itemData) lis.get(0);
			int ids=list1.getItemid();
			invoiceData inl=new invoiceData(invoiceidd,name[i],price[i],quan[i],customersname,ids);
			int a=dao2.add(inl);
		}
		return 0;
		//return s;
	}
	
	@RequestMapping(value = "/DeleteItem", method = RequestMethod.POST)
	@ResponseBody
	public List<itemData> DeleteItem( @RequestParam("itemname") String itemname ) throws Exception{
		System.out.print("Item Name : "+itemname);

		List<itemData> l =  dao.itemRetrival(itemname);
		itemData list = (itemData) l.get(0);
		System.out.println("List : " + list);
		
		int price = list.getItemprice();
		String desc = list.getItemdisc();
		String key = list.getItemkey();
		String uom = list.getItemuom();
		
		System.out.print("price "+price+" desc "+desc +" key "+key);
				
		return l;

	}
	
	@RequestMapping(value = "/Deletecustomer", method = RequestMethod.POST)
	@ResponseBody
	public List<customerData> Deletecustomer( @RequestParam("customername") String customername ) throws Exception{
		System.out.print("Item Name : "+customername);

		List<customerData> l =  dao1.itemRetrival(customername);
		customerData list = (customerData) l.get(0);
		System.out.println("List : " + list);
		
//		int price = list.getItemprice();
//		String desc = list.getItemdisc();
//		String key = list.getItemkey();
//		String uom = list.getItemuom();
//		
//		System.out.print("price "+price+" desc "+desc +" key "+key);
				
		return l;

	}
	
	@RequestMapping(value = "/deletecustomers", method = RequestMethod.POST)
	@ResponseBody
	public int deletecustomers(@RequestParam("customername") String customername) {
		System.out.print("sdfghjk");
		return dao1.delete(customername);
		//return s;
	}
	@RequestMapping(value = "/ItemsInvoice", method = RequestMethod.POST)
	@ResponseBody
	public List<itemData> ItemsInvoice() {
		System.out.print("ItemsRetrival");
		List<itemData> listofitemnames=dao.getitems();
		System.out.println("List names : " + listofitemnames);
		
		
		return listofitemnames;
		//return s;
	}
	@RequestMapping(value = "/customersInvoice", method = RequestMethod.POST)
	@ResponseBody
	public List<customerData> customersInvoice() {
		System.out.print("customersRetrival");
		List<customerData> listofcustomernames=dao1.getcustomers();
		System.out.println("List names : " + listofcustomernames);
		
		
		return listofcustomernames;
		//return s;
	}
}
