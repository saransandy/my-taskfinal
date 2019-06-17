package online11;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import java.util.List;
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
	
	@RequestMapping(value="/")
	public String welcome(Model m) {
		m.addAttribute("con", new itemData());
		return "index";
	}	
	@RequestMapping("/check")  
    public String check(Model m) {
		m.addAttribute("con", new itemData());
		return "items";
	}
	
	@RequestMapping("/customer")  
    public String customer(Model m) {
		m.addAttribute("con", new itemData());
		return "customers";
	}
	@RequestMapping("/invoice")  
    public String invoice(Model m) {
		m.addAttribute("con", new itemData());
		return "invoices";
	}
	@RequestMapping(value = "/additems", method = RequestMethod.POST)
	@ResponseBody
	public int additems(@RequestParam("no") int itemno,@RequestParam("itemname") String itemname,@RequestParam("price") int item_price,@RequestParam("desc") String item_desc,@RequestParam("key") String item_key,@RequestParam("uom") String item_uom) {
		System.out.print("sdfghjk");
		itemData col=new itemData(itemno,itemname,item_price,item_desc,item_key,item_uom);
		return dao.add(col);
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
	
//	@RequestMapping(value = "/ItemsInvoice", method = RequestMethod.POST)
//	@ResponseBody
//	public List<int> ItemsInvoice() {
//		System.out.print("ItemsRetrival");
//		List<int> listofitemnames=dao2.getitemnames();
//		return listofitemnames;
//		//return s;
//	}
}
