package product.dao;

import java.util.List;

import color.dto.ColorDTO;
import member.dto.MemberDTO;
import product.dto.ProductDTO;

public interface ProductDAO {
   public int insertProduct(ProductDTO dto);
   public List<ProductDTO> listProduct();
   public ProductDTO getProduct(String p_name);
   public int checkStock(ColorDTO colorDTO);
   public int addInsertProduct(ColorDTO dto);
   public int deleteProduct(int num);
   public List<ProductDTO> listProductAll();
}