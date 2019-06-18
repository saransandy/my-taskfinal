package online11;

public class invoiceData {
	int invoice_id;
	String itemname;
	String item_quantity;
	String item_price;
	String customername;
	int item_id;
	int grand_total;
	String date_and_time;
	public invoiceData() {
		
	}


	public invoiceData(int invoice_id, String itemname, String item_quantity, String item_price, String customername,
			int item_id) {
		this.invoice_id = invoice_id;
		this.itemname = itemname;
		this.item_quantity = item_quantity;
		this.item_price = item_price;
		this.customername = customername;
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


	public String getItem_quantity() {
		return item_quantity;
	}


	public void setItem_quantity(String item_quantity) {
		this.item_quantity = item_quantity;
	}


	public String getItem_price() {
		return item_price;
	}


	public void setItem_price(String item_price) {
		this.item_price = item_price;
	}


	public String getcustomername() {
		return customername;
	}


	public void setcustomername(String customername) {
		this.customername = customername;
	}


	public int getItem_id() {
		return item_id;
	}


	public void setItem_id(int item_id) {
		this.item_id = item_id;
	}


	public String getDate_and_time() {
		return date_and_time;
	}


	public void setDate_and_time(String date_and_time) {
		this.date_and_time = date_and_time;
	}


	@Override
	public String toString() {
		return "invoiceData [invoice_id=" + invoice_id + ", itemname=" + itemname + ", item_quantity=" + item_quantity
				+ ", item_price=" + item_price + ", customername=" + customername + ", item_id=" + item_id + ", grand_total="
				+ grand_total + ", date_and_time=" + date_and_time + "]";
	}


	

	
	
}
