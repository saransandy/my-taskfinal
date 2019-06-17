package online11;

public class invoiceData {
	int invoice_id;
	String itemname;
	int item_quantity;
	int item_price;
	String cust_id;
	int item_id;
	int grand_total;
	
	public invoiceData() {
		
	}


	public invoiceData(int invoice_id, String itemname, int item_quantity, int item_price, String cust_id,
			int item_id) {
		this.invoice_id = invoice_id;
		this.itemname = itemname;
		this.item_quantity = item_quantity;
		this.item_price = item_price;
		this.cust_id = cust_id;
		this.item_id = item_id;
	}


	public int getGrand_total() {
		return grand_total;
	}


	public void setGrand_total(int grand_total) {
		this.grand_total = grand_total;
	}


	public int getInvoice_id() {
		return invoice_id;
	}


	public void setInvoice_id(int invoice_id) {
		this.invoice_id = invoice_id;
	}


	public String getItemname() {
		return itemname;
	}


	public void setItemname(String itemname) {
		this.itemname = itemname;
	}


	public int getItem_quantity() {
		return item_quantity;
	}


	public void setItem_quantity(int item_quantity) {
		this.item_quantity = item_quantity;
	}


	public int getItem_price() {
		return item_price;
	}


	public void setItem_price(int item_price) {
		this.item_price = item_price;
	}


	public String getCust_id() {
		return cust_id;
	}


	public void setCust_id(String cust_id) {
		this.cust_id = cust_id;
	}


	public int getItem_id() {
		return item_id;
	}


	public void setItem_id(int item_id) {
		this.item_id = item_id;
	}


	@Override
	public String toString() {
		return "invoiceData [invoice_id=" + invoice_id + ", itemname=" + itemname + ", item_quantity=" + item_quantity
				+ ", item_price=" + item_price + ", cust_id=" + cust_id + ", item_id=" + item_id + ", grand_total="
				+ grand_total + "]";
	}


	
	
}
