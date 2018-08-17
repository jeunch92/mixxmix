package product.dao;

import org.springframework.jdbc.core.JdbcTemplate;
import java.util.*;
import product.mybatis.*;
import product.dto.*;

public class CategoryDAOImpl implements CategoryDAO{
	private JdbcTemplate jdbcTemplate;
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	@Override
	public int insertCategory(CategoryDTO dto) {
		return ProductMapper.insertCategory(dto);
	}
	
	@Override
	public List<CategoryDTO> listCategory(){
		return ProductMapper.listCategory();
	}
}
