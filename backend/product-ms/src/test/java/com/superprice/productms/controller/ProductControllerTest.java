package com.superprice.productms.controller;

import com.superprice.productms.dto.ProductDto;
import com.superprice.productms.dto.SupermarketPriceDto;
import com.superprice.productms.model.Review;
import com.superprice.productms.model.SupermarketProduct;
import com.superprice.productms.service.ProductService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import java.time.LocalDateTime;
import java.util.*;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.*;


public class ProductControllerTest {
    ProductController controller;
    ProductService service;
    @BeforeEach
    void setup() {
        this.service = mock(ProductService.class);
        this.controller = new ProductController(this.service);
    }

    @Test
    void should_returnEmpty_When_noProducts() {
        when(this.service.searchProductsByName("Apple")).thenReturn(new ArrayList<>());
        List<ProductDto> actualProducts = this.controller.searchProductsByName("Apple");
        assertEquals(0, actualProducts.size());
    }
    @Test
    void should_return1_When_matchingProduct() {
        ArrayList<ProductDto> products = new ArrayList<ProductDto>();
        ArrayList<SupermarketPriceDto> supermarketprices = new ArrayList<SupermarketPriceDto>();
        SupermarketPriceDto supermarketprice = new SupermarketPriceDto(1, "coles", 0.3);
        supermarketprices.add(supermarketprice);
        ProductDto apple = new ProductDto(1, "Apple", "Fresh red", "Fruit", "apple.png", 0.2, supermarketprices);
        products.add(apple);
        when(this.service.searchProductsByName("Apple")).thenReturn(products);
        List<ProductDto> actualProducts = this.controller.searchProductsByName("Apple");
        assertEquals(1, actualProducts.size());
    }

    @Test
    void should_returnEmptyList_When_noSupermarketProductsFound() {
        int productId = 123;
        when(this.service.comparePrices(productId)).thenReturn(new ArrayList<>());
        List<SupermarketProduct> actualSupermarketProducts = this.controller.comparePrices(productId);
        assertEquals(0, actualSupermarketProducts.size());
    }
    @Test
    void should_returnSupermarketProducts_When_productsFound() {
        int productId = 456;
        List<SupermarketProduct> expectedSupermarketProducts = new ArrayList<>();
        SupermarketProduct product1 = new SupermarketProduct();
        product1.setProductId(productId);
        product1.setSupermarketId(1);
        product1.setPrice(2.99);
        expectedSupermarketProducts.add(product1);

        SupermarketProduct product2 = new SupermarketProduct();
        product2.setProductId(productId);
        product2.setSupermarketId(2);
        product2.setPrice(3.49);
        expectedSupermarketProducts.add(product2);


        when(this.service.comparePrices(productId)).thenReturn(expectedSupermarketProducts);


        List<SupermarketProduct> actualSupermarketProducts = this.controller.comparePrices(productId);


        assertEquals(expectedSupermarketProducts.size(), actualSupermarketProducts.size());

    }

    // @Test
    // void should_returnReviews_when_reviewsArePresent() {
    //     // Arrange
    //     int productId = 1;

    //     // Create a list of reviews to be returned by the mock
    //     List<Review> expectedReviews = new ArrayList<>();
    //     expectedReviews.add(new Review(1, "Good product", "User1", 5, LocalDateTime.now()));
    //     expectedReviews.add(new Review(2, "Average product", "User2", 3, LocalDateTime.now()));

    //     when(this.service.getReviews(productId)).thenReturn(expectedReviews);

    //     // Act
    //     ResponseEntity<List<Review>> responseEntity = this.controller.readReviews(productId);

    //     // Assert
    //     assertEquals(HttpStatus.OK, responseEntity.getStatusCode());
    //     assertEquals(expectedReviews, responseEntity.getBody());
    // }


}
