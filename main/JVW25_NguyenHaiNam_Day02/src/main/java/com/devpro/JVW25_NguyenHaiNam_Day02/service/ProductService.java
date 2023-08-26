package com.devpro.JVW25_NguyenHaiNam_Day02.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.JVW25_NguyenHaiNam_Day02.dto.Constants;
import com.devpro.JVW25_NguyenHaiNam_Day02.dto.ProductSearch;
import com.devpro.JVW25_NguyenHaiNam_Day02.model.Product;
import com.devpro.JVW25_NguyenHaiNam_Day02.model.ProductImage;

@Service
public class ProductService extends BaseService<Product> implements Constants {

	@Override
	public Class<Product> clazz() {
		// TODO Auto-generated method stub
		return Product.class;
	}

	// Kiem tra nguoi dug co upload avatar khong?
	public boolean isEmptyUploadAvatar(MultipartFile avatarFile) {
		if (avatarFile == null || avatarFile.getOriginalFilename().isEmpty()) {
			return true;
		}
		return false;
	}

	// Kiem tra nguoi dung co upload image khong?
	public boolean isEmptyUploadImages(MultipartFile[] imageFiles) {
		if (imageFiles == null || imageFiles.length <= 0) {
			return true;
		}
		if (imageFiles.length == 1 || imageFiles[0].getOriginalFilename().isEmpty()) {
			return true;
		}
		return false;
	}

	@Transactional
	public Product saveProduct(Product product, MultipartFile avatarFile, MultipartFile[] imageFiles)
			throws IOException {
		String path;
		if (!isEmptyUploadAvatar(avatarFile)) {
			// Luu file vao thu muc product/avatar
			path = FOLDER_UPLOAD + "Product/Avatar/" + avatarFile.getOriginalFilename();
			avatarFile.transferTo(new File(path));

			// Luu duong dan vao database

			product.setAvatar("Product/Avatar/" + avatarFile.getOriginalFilename());
		}
		// Luu cac image
		if (!isEmptyUploadImages(imageFiles)) {
			for (MultipartFile x : imageFiles) {
				if (!x.isEmpty()) {
					path = FOLDER_UPLOAD + "Product/Image/" + x.getOriginalFilename();
					x.transferTo(new File(path));
					ProductImage productImage = new ProductImage();
					productImage.setTitle(x.getOriginalFilename());
					productImage.setPath("Product/Image/" + x.getOriginalFilename());
					product.addRelationalProductImage(productImage);
				}
			}
		}
		return super.saveOrUpdate(product);
	}

	@Transactional
	public Product saveEditProduct(Product product, MultipartFile avatarFile, MultipartFile[] imageFiles)
			throws IOException {
		// Lay product trong database - tbl-product
		Product dbProduct = super.getById(product.getId());
		String path;
		// Kiem tra xem nguoi dung co up Avatar khong
		if (!isEmptyUploadAvatar(avatarFile)) {
			// Xoa avatar cu di
			File file = new File(FOLDER_UPLOAD + dbProduct.getAvatar());
			file.delete();
			// Luu file vao thu muc product/avatar
			path = FOLDER_UPLOAD + "Product/Avatar/" + avatarFile.getOriginalFilename();
			avatarFile.transferTo(new File(path));

			// Luu duong dan vao database

			product.setAvatar("Product/Avatar/" + avatarFile.getOriginalFilename());
		} else { // Neu nguoi dung khong upload avatar moi
			product.setAvatar(dbProduct.getAvatar()); // giu path avatar
		}
		// Luu cac image
		if (!isEmptyUploadImages(imageFiles)) {
			for (MultipartFile x : imageFiles) {
				if (!x.isEmpty()) {
					path = FOLDER_UPLOAD + "Product/Image/" + x.getOriginalFilename();
					x.transferTo(new File(path));
					ProductImage productImage = new ProductImage();
					productImage.setTitle(x.getOriginalFilename());
					productImage.setPath("Product/Image/" + x.getOriginalFilename());
					product.addRelationalProductImage(productImage);
				}
			}
		}
		return super.saveOrUpdate(product);
	}

	@Transactional
	public void deleteProduct(Product product) {
		super.delete(product);
	}

	// delete image
	@Transactional
	public void inactiveProduct(Product product) {
		super.saveOrUpdate(product);
	}

	public List<Product> findAllActive() {
		return super.executeNativeSql("SELECT * FROM tbl_product p WHERE status=1");
	}

	public List<Product> search(ProductSearch productSearch) {
		String sql = "SELECT * FROM tbl_product p WHERE status=1";
		//Tim kiem theo category
		if (productSearch.getCategoryId() > 0) { //Co chon category
			sql += " and p.category_id=" + productSearch.getCategoryId();
		}
		//Tim theo keyword
		if (!StringUtils.isEmpty(productSearch.getKeyword())) {
			sql += " and (p.name like '%" + productSearch.getKeyword() + "%'" +
					" or p.short_description like '%" + productSearch.getKeyword() + "%')";
		}
		
		return super.executeNativeSql(sql, productSearch.getCurrentPage(), productSearch.getSizeOfPage());
	}

}
