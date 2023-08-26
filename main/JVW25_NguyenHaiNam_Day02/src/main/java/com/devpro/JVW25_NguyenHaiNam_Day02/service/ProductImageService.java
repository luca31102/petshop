package com.devpro.JVW25_NguyenHaiNam_Day02.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.devpro.JVW25_NguyenHaiNam_Day02.model.ProductImage;

@Service
public class ProductImageService extends BaseService<ProductImage> {
	@Override
	public Class<ProductImage> clazz() {
		// TODO Auto-generated method stub
		return ProductImage.class;
	}
	
	public List<ProductImage> getImageByProductId(int productId){
		//Tao cau lenh truy van
		String sql = "SELECT * FROM tbl_product_image WHERE product_id=" + productId;
		return super.executeNativeSql(sql);
		
	}
	
	@Transactional
	public void deleteImage(ProductImage productImage) {// xoa anh trong database tbl_product_image
		super.delete(productImage);
	}
}
