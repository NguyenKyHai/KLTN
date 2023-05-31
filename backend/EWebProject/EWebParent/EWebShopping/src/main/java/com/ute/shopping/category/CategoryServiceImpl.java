package com.ute.shopping.category;

import com.ute.common.entity.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CategoryServiceImpl implements ICategoryService{

	@Autowired
    ICategoryRepository categoryRepository;

	@Override
	public List<Category> categories() {
		return categoryRepository.findAll();
	}

	@Override
	public Category save(Category category) {
		
		return categoryRepository.save(category);
	}

	@Override
	public Optional<Category> findById(Integer id) {
		
		return categoryRepository.findById(id);
	}

	@Override
	public Boolean existsByName(String name) {
		
		return categoryRepository.existsByName(name);
	}
	
	@Override
	public void updateCategoryEnabledStatus(Integer id, boolean enabled) {
		categoryRepository.updateEnabledStatus(id, enabled);
	}

	@Override
	public Optional<Category> findByName(String name) {
	
		return categoryRepository.findByName(name);
	}


}
