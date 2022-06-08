package com.sikon.service.recipe.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.sikon.common.Search;
import com.sikon.service.domain.Recipe;
import com.sikon.service.recipe.RecipeDao;

//레시피 DAO CRUD 구현
@Repository("recipeDaoImpl")
public class RecipeDaoImpl implements RecipeDao {

	/// Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	/// Constructor
	public RecipeDaoImpl() {
		System.out.println(this.getClass());
	}

	/// Method
	public void addRecipe(Recipe recipe, Map ingredient) throws Exception {
		System.out.println("recipe=" + recipe);
		System.out.println("ingredient=" + ingredient);

		sqlSession.insert("RecipeMapper.addRecipe", recipe);
		sqlSession.insert("IngredientMapper.addIngredient", ingredient.get("list"));
	}

	public List getRecipe(int recipeNo) throws Exception {
		System.out.println("recipeNo=" + recipeNo);
		return sqlSession.selectList("RecipeMapper.getRecipe", recipeNo);
	}

	public List<Recipe> getRecipeList(Search search) throws Exception {
		System.out.println("search=" + search);
		return sqlSession.selectList("RecipeMapper.getRecipeList", search);
	}

	public int getTotalCount(Search search) throws Exception {
		System.out.println("search=" + search);
		return sqlSession.selectOne("RecipeMapper.getTotalCount", search);
	}

	public List<Recipe> getMyRecipeList(Search search, String writerNickname) throws Exception {
		System.out.println("search=" + search);
		System.out.println("writerNickname=" + writerNickname);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("writerNickname", writerNickname);
		map.put("search", search);
		return sqlSession.selectList("RecipeMapper.getMyRecipeList", map);
	}

	public int getTotalMyCount(Search search, String writerNickname) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("writerNickname", writerNickname);
		map.put("search", search);
		return sqlSession.selectOne("RecipeMapper.getTotalMyCount", map);
	}

	public void updateRecipe(Recipe recipe, Map ingredient) throws Exception {
		System.out.println("아recipe=" + recipe);
		sqlSession.update("RecipeMapper.updateRecipe", recipe);
		System.out.println("모냐"+ingredient.get("list"));
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", ingredient.get("list"));
		map.put("recipeNo", recipe.getRecipeNo());
		
		sqlSession.update("IngredientMapper.updateIngredient", map);
	}

//	public void updateIngredient(List ingredient, int recipeNo) throws Exception {
//		System.out.println("ingredient=" + ingredient);
//		System.out.println("recipeNo=" + recipeNo);
////		System.out.println(ingredient.get("list"));
//		sqlSession.update("RecipeMapper.updateIngredient", map);
//	}

	public void deleteRecipe(int recipeNo) throws Exception {
		System.out.println("recipeNo" + recipeNo);
		sqlSession.delete("RecipeMapper.deleteRecipe", recipeNo);
	}

	@Override
	public List<Recipe> bestRecipeList() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList("RecipeMapper.bestRecipeList");
	}

}