package com.devpro.JVW25_NguyenHaiNam_Day02.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.devpro.JVW25_NguyenHaiNam_Day02.dto.CartSearch;
import com.devpro.JVW25_NguyenHaiNam_Day02.dto.Constants;
import com.devpro.JVW25_NguyenHaiNam_Day02.model.SaleOrder;

@Service
public class SaleOrderService extends BaseService<SaleOrder> implements Constants {

	@Override
	public Class<SaleOrder> clazz() {
		// TODO Auto-generated method stub
		return SaleOrder.class;
	}

	public List<SaleOrder> search(CartSearch cartSearch) {
		String sql = "SELECT * FROM tbl_sale_order s WHERE 1=1";
		// Tim kiem theo category
		if (cartSearch.getStatus() != 2) { // Co chon category
			sql += " and s.status=" + cartSearch.getStatus();
		}
		// Tim theo keyword
		if (!StringUtils.isEmpty(cartSearch.getKeyword())) {
			sql += " AND (s.code='" + cartSearch.getKeyword() + "'" + " OR s.customer_name like '%"
					+ cartSearch.getKeyword() + "%'" + " OR s.customer_address like '%" + cartSearch.getKeyword() + "%'"
					+ " OR s.customer_mobile like '%" + cartSearch.getKeyword() + "%'" + " OR s.customer_email like '%"
					+ cartSearch.getKeyword() + "%')";
		}
		
		String bDate = cartSearch.getBeginDate();
		String eDate = cartSearch.getEndDate();
		if (bDate != null && eDate != null) {
			eDate = eDate + " 23:59:59";
			sql += " AND (s.create_date BETWEEN '" + bDate + "' AND '" + eDate + "')";
		}
		return super.executeNativeSql(sql, cartSearch.getCurrentPage(), cartSearch.getSizeOfPage());
	}
}
