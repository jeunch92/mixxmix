package product.dao;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import color.dto.ColorDTO;
import member.mybatis.MemberMapper;
import product.dto.ProductDTO;
import product.mybatis.ProductMapper;

public class ProductDAOImpl implements ProductDAO {

   private JdbcTemplate jdbcTemplate;
      
      public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
         this.jdbcTemplate = jdbcTemplate;
      }
   @Override
   public int insertProduct(ProductDTO dto) {
      // TODO Auto-generated method stub
       return ProductMapper.insertProduct(dto);
   }
   @Override
   public List<ProductDTO> listProduct() {
      return ProductMapper.listProduct();
   }
   
   @Override
   public int checkStock(ColorDTO dto) {
	      return ProductMapper.checkStock(dto);
	   }
   @Override
   public int addInsertProduct(ColorDTO dto) {
	      String sql = "update color set color.col_stock = (select col_stock from color where p_num = '"
	            +dto.getP_num()+"' and col_name = '"+dto.getCol_name()+"' and col_size = '"+dto.getCol_size()
	            +"') + "+dto.getCol_stock()+" where p_num = '"+dto.getP_num()+"' and col_name = '"+dto.getCol_name()
	            +"' and col_size = '"+dto.getCol_size()+"'";
	      System.out.println("sql : "+sql);
	      return ProductMapper.addInsertProduct(sql);
	   }

   @Override
   public int deleteProduct(int num) {
       return ProductMapper.deleteProduct(num);
   }
@Override
public ProductDTO getProduct(String p_name) {
	// TODO Auto-generated method stub
	return null;
}
@Override
public List<ProductDTO> listProductAll() {
	// TODO Auto-generated method stub
	return ProductMapper.listProductAll();
}

}
