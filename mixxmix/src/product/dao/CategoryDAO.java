package product.dao;

import product.dto.*;
import java.util.*;

public interface CategoryDAO {
	public int insertCategory(CategoryDTO dto);
	public List<CategoryDTO> listCategory();
}
