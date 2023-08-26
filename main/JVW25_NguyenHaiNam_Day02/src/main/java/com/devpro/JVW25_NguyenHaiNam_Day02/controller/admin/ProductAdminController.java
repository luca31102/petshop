package com.devpro.JVW25_NguyenHaiNam_Day02.controller.admin;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.JVW25_NguyenHaiNam_Day02.controller.BaseController;
import com.devpro.JVW25_NguyenHaiNam_Day02.dto.Constants;
import com.devpro.JVW25_NguyenHaiNam_Day02.dto.ProductSearch;
import com.devpro.JVW25_NguyenHaiNam_Day02.model.Category;
import com.devpro.JVW25_NguyenHaiNam_Day02.model.Product;
import com.devpro.JVW25_NguyenHaiNam_Day02.model.ProductImage;
import com.devpro.JVW25_NguyenHaiNam_Day02.model.User;
import com.devpro.JVW25_NguyenHaiNam_Day02.service.CategoryService;
import com.devpro.JVW25_NguyenHaiNam_Day02.service.ProductImageService;
import com.devpro.JVW25_NguyenHaiNam_Day02.service.ProductService;
import com.devpro.JVW25_NguyenHaiNam_Day02.service.UserService;

@Controller
public class ProductAdminController extends BaseController implements Constants {
	@Autowired
	private ProductService productService;

	@Autowired
	private UserService userService;

	@Autowired
	private CategoryService categoryService;

	@Autowired
	private ProductImageService productImageService;

	@RequestMapping(value = "/list-product", method = RequestMethod.GET)
	public String listProduct(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		String keyword = request.getParameter("keyword");
		int categoryId = 0;
		if (request.getParameter("categoryId") != null && !"0".equals(request.getParameter("categoryId"))) {
			categoryId = Integer.parseInt(request.getParameter("categoryId"));
		}

		ProductSearch productSearch = new ProductSearch();
		productSearch.setCategoryId(categoryId);
		productSearch.setKeyword(keyword);
		//Phan trang
		productSearch.setSizeOfPage(SIZE_OF_PAGE);
		productSearch.setTotalItems(productService.findAllActive().size());
		int currentPage = 1;
		if (!StringUtils.isEmpty(request.getParameter("page"))) {
			currentPage = Integer.parseInt(request.getParameter("page"));
		}
		productSearch.setCurrentPage(currentPage);
		//Het phan trang
		List<Product> products = productService.search(productSearch);
		model.addAttribute("products", products);
		List<Category> categories = categoryService.findAll();
		model.addAttribute("categories", categories);
		Integer total = productService.findAll().size();
		model.addAttribute("total", total);
		model.addAttribute("productSearch", productSearch);
		return "admin/list-product";
	}

	@RequestMapping(value = "/add-product", method = RequestMethod.GET)
	public String addProduct(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		model.addAttribute("product", new Product());
		List<User> users = userService.findAll();
		model.addAttribute("users", users);
		List<Category> categories = categoryService.findAll();
		model.addAttribute("categories", categories);
		Date currentDate = new Date();
		Product product = new Product();
		product.setCreateDate(currentDate);
		product.setUpdateDate(currentDate);
		model.addAttribute("product", product);
		return "admin/add-product";
	}

	@RequestMapping(value = "/save-add-product", method = RequestMethod.POST)
	public String saveAddProduct(final Model model, final HttpServletRequest request,
			final HttpServletResponse response, @ModelAttribute("product") Product product,
			@RequestParam("productAvatar") MultipartFile productAvatar,
			@RequestParam("productPictures") MultipartFile[] productPictures) throws IOException {
//		model.addAttribute("product", new Product());
//		List<User> users = userService.findAll();
//		model.addAttribute("users", users);
//		List<Category> categories = categoryService.findAll();
//		model.addAttribute("categories", categories);
//		productService.saveOrUpdate(product);
		if (product.getId() == null || product.getId() <= 0) {
			productService.saveProduct(product, productAvatar, productPictures);
		}
		return "redirect:/add-product";
	}

	@RequestMapping(value = "/edit-product/{productId}", method = RequestMethod.GET)
	public String editProduct(final Model model, final HttpServletRequest request, final HttpServletResponse response,
			@PathVariable("productId") int productId) throws IOException {
		// lay product co id la productId
		Product product = productService.getById(productId);
		model.addAttribute("product", product);
		List<User> users = userService.findAll();
		model.addAttribute("users", users);
		List<Category> categories = categoryService.findAll();
		model.addAttribute("categories", categories);
		return "admin/edit-product";
	}

	@RequestMapping(value = "/save-edit-product", method = RequestMethod.POST)
	public String saveEditProduct(final Model model, final HttpServletRequest request,
			final HttpServletResponse response, @ModelAttribute("product") Product product,
			@RequestParam("productAvatar") MultipartFile productAvatar,
			@RequestParam("productPictures") MultipartFile[] productPictures) throws IOException {

		if (product.getId() != null || product.getId() > 0) {
			productService.saveEditProduct(product, productAvatar, productPictures);
		}
		return "redirect:/list-product";
	}

//	@RequestMapping(value = "/delete-product/{productId}", method = RequestMethod.GET)
//	public String deleteProduct(final Model model,
//			final HttpServletRequest request,
//			final HttpServletResponse response,
//			@PathVariable("productId") int productId
//			)throws IOException{
//		
//		Product product = productService.getById(productId);
//		// Xoa anh trong tbl_product_image va casc file anh tuong ung trong thu muc
//		List<ProductImage> produtImages = productImageService.getImageByProductId(productId);
//		for(ProductImage image: produtImages) {
//			String path = FOLDER_UPLOAD + image.getPath();
//			File file = new File(path);
//			file.delete();
//		}
//		File file = new File(FOLDER_UPLOAD + product.getAvatar());
//		file.delete();
//		productService.deleteProduct(product);
//		return "redirect:/list-product/1";
//	}

	@RequestMapping(value = "/delete-product/{productId}", method = RequestMethod.GET)
	public String inactiveProduct(final Model model, final HttpServletRequest request,
			final HttpServletResponse response, @PathVariable("productId") int productId) throws IOException {

		Product product = productService.getById(productId);
		// Xoa anh trong tbl_product_image va casc file anh tuong ung trong thu muc
		List<ProductImage> produtImages = productImageService.getImageByProductId(productId);
		for (ProductImage image : produtImages) {// Xoa anh trong thu muc
			String path = FOLDER_UPLOAD + image.getPath();
			File file = new File(path);
			file.delete();
			productImageService.deleteImage(image);
		}
		File file = new File(FOLDER_UPLOAD + product.getAvatar());
		file.delete();
		product.setAvatar(null);
		product.setStatus(Boolean.FALSE);
		productService.inactiveProduct(product);
		return "redirect:/list-product";
	}

}
