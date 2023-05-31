package com.ute.shopping.product;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.ute.common.entity.Product;

public interface IProductRepository extends JpaRepository<Product, Integer> {

    Optional<Product> findByName(String name);

    Boolean existsByName(String name);

    @Query(value = "select * from products p" +
            " where p.category_id = ?1 order by p.discount_percent desc limit 5", nativeQuery = true)
    List<Product> getProductBySameCategory(Integer CategoryId);

    @Query(value =
            "select p from Product p"
            + " where upper(p.name) like CONCAT('%',UPPER(?1),'%')"
            + " and p.category.id in ?2 "
            + "and p.price between ?3 and ?4"
    )
    Page<Product> filterProduct(String productName, List<Integer> categoryId, BigDecimal minPrice, BigDecimal maxPrice, Pageable pageable);

    @Modifying
    @Query(value = "Update products set average_rating = (average_rating * review_count + ?2)/(review_count + 1), "
            + " review_count = review_count + 1 "
            + " where id = ?1"
            , nativeQuery = true)
    void updateReviewCountAndAverageRating(Integer productId, double rating);

    @Modifying
    @Query(value = "Update products set average_rating = (average_rating * review_count - ?2)/(review_count -1), "
            + " review_count = review_count - 1 "
            + " where id = ?1"
            , nativeQuery = true)
    void revertReviewRating(Integer productId, double oldRating);
}
