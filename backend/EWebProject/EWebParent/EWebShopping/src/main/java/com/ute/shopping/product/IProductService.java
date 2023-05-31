package com.ute.shopping.product;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;
import com.ute.common.entity.Product;
import org.springframework.data.domain.Page;

public interface IProductService {
	List<Product> listAll();

	Optional<Product> findById(Integer id);

	Optional<Product> findByName(String name);

	void updateReviewRating(Integer productId, double oldRating);

	List<Product> getProductBySameCategory(Integer categoryId);

	Page<Product> filterProducts(String productName, List<Integer> categoryId, BigDecimal minPrice, BigDecimal maxPrice,
								 int page, int size, List<String> sortBy, String order);
}
