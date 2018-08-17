package product.dto;

import org.springframework.web.multipart.MultipartFile;

public class ProductDTO {
	private int c_num;
	   private int p_num;
	   private String p_code;
	   private String p_name;
	   private String p_img;
	   private String p_content;
	   private int p_price;
	   private String p_matter;
	   private String p_producer;
	   private String p_regdate;
	   private int p_point;
	   private String p_hashtag;
	   private int p_like;
	   private int p_dc;
	   private int p_sell;
	
	public int getP_like() {
		return p_like;
	}
	public void setP_like(int p_like) {
		this.p_like = p_like;
	}
	public int getP_dc() {
		return p_dc;
	}
	public void setP_dc(int p_dc) {
		this.p_dc = p_dc;
	}
	public int getP_sell() {
		return p_sell;
	}
	public void setP_sell(int p_sell) {
		this.p_sell = p_sell;
	}
	public int getC_num() {
		return c_num;
	}
	public void setC_num(int c_num) {
		this.c_num = c_num;
	}
	public int getP_num() {
		return p_num;
	}
	public void setP_num(int p_num) {
		this.p_num = p_num;
	}
	public String getP_code() {
		return p_code;
	}
	public void setP_code(String p_code) {
		this.p_code = p_code;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_img() {
		return p_img;
	}
	public void setP_img(String p_img) {
		this.p_img = p_img;
	}
	/*public MultipartFile getP_img() {
		return p_img;
	}
	public void setP_img(MultipartFile p_img) {
		this.p_img = p_img;
	}*/
	public String getP_content() {
		return p_content;
	}
	public void setP_content(String p_content) {
		this.p_content = p_content;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public String getP_matter() {
		return p_matter;
	}
	public void setP_matter(String p_matter) {
		this.p_matter = p_matter;
	}
	public String getP_producer() {
		return p_producer;
	}
	public void setP_producer(String p_producer) {
		this.p_producer = p_producer;
	}
	public String getP_regdate() {
		return p_regdate;
	}
	public void setP_regdate(String p_regdate) {
		this.p_regdate = p_regdate;
	}
	public int getP_point() {
		return p_point;
	}
	public void setP_point(int p_point) {
		this.p_point = p_point;
	}
	public String getP_hashtag() {
		return p_hashtag;
	}
	public void setP_hashtag(String p_hashtag) {
		this.p_hashtag = p_hashtag;
	}
	

}
