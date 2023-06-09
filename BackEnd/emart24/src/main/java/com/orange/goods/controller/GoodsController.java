package com.orange.goods.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.orange.goods.domain.GoodsDTO;
import com.orange.goods.service.GoodsService;

@Controller
public class GoodsController {

	@Autowired
	GoodsService goodsService;
	
	@GetMapping("/goods")
	public String goods(Model m) {
		
	    try {
	        List<GoodsDTO> goods = goodsService.selectAllGoods(); // 상품 목록 조회
	        
	        m.addAttribute("goods", goods); // 상품 목록을 Model에 추가
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    
        return "goods"; // JSP 파일 이름 반환
	}
	
}
