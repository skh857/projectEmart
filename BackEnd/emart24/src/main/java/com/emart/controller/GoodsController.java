package com.emart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.emart.domain.GoodsDTO;
import com.emart.service.GoodsService;

@Controller
public class GoodsController {

	@Autowired
	GoodsService goodsService;
	
	// 상품 목록 조회
	@GetMapping("/goods")
	public String goodsList(Model model) {
		
	    try {
	        List<GoodsDTO> goods = goodsService.selectAllGoods(); // 상품 목록 조회
	        
	        model.addAttribute("goods", goods); // 상품 목록을 Model에 추가
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    
        return "goods"; // JSP 파일 이름 반환
	}
	
}
