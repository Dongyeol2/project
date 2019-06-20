package spring.biz.subcategory.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;

import spring.biz.studyroom.dao.StudyRoomDAO;
import spring.biz.subcategory.dao.SubCategoryDAO;
import spring.biz.subcategory.vo.SubCategoryVO;

@Service("subcategoryservice")
public class SubCategoryServiceImpl  implements SubCategoryService{

	@Resource(name = "subcategorymybatis")
	SubCategoryDAO dao;
	
	@Autowired
	ApplicationContext context;

	@Override
	public List<SubCategoryVO> getSubCategoryList() {
		// TODO Auto-generated method stub
		return dao.getSubCategoryList();
	}

	@Override
	public SubCategoryVO getSubCategory(int categorycode) {
		// TODO Auto-generated method stub
		return dao.getSubCategory(categorycode);
	}

	@Override
	public List<SubCategoryVO> getSubCategoryList(String categoryname) {
		// TODO Auto-generated method stub
		return dao.getSubCategoryList(categoryname);
	}
		
}
