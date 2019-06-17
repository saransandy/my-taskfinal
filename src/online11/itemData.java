package online11;

public class itemData {
	private int itemid;
	private int itemprice;
	private String itemname;
	private String itemdisc;
	private String itemkey;
	private String itemuom;
	
	itemData(){
		
	}
	
	itemData(int id,String name,int price,String disc,String key,String uom){
		this.itemid=id;
		this.itemname=name;
		this.itemprice=price;
		this.itemdisc=disc;
		this.itemkey=key;
		this.itemuom=uom;
	}
	public int getItemid() {
		return itemid;
	}
	public void setItemid(int itemid) {
		this.itemid = itemid;
	}
	public int getItemprice() {
		return itemprice;
	}
	public void setItemprice(int itemprice) {
		this.itemprice = itemprice;
	}
	public String getItemname() {
		return itemname;
	}
	public void setItemname(String itemname) {
		this.itemname = itemname;
	}
	public String getItemdisc() {
		return itemdisc;
	}
	public void setItemdisc(String itemdisc) {
		this.itemdisc = itemdisc;
	}
	public String getItemkey() {
		return itemkey;
	}
	public void setItemkey(String itemkey) {
		this.itemkey = itemkey;
	}
	public String getItemuom() {
		return itemuom;
	}
	public void setItemuom(String itemuom) {
		this.itemuom = itemuom;
	}
	@Override
	public String toString() {
		return "itemData [itemid=" + itemid + ", itemprice=" + itemprice + ", itemname=" + itemname + ", itemdisc="
				+ itemdisc + ", itemkey=" + itemkey + ", itemuom=" + itemuom + "]";
	}
	
}
