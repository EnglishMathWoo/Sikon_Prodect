package com.sikon.service.recipe;

import java.util.List;
import java.util.Map;

import com.sikon.common.Search;
import com.sikon.service.domain.Recipe;

//레시피에서 CRUD 추상화/캡슐화한 DAO Interface Definition
public interface RecipeDao {

	// INSERT
	public void addRecipe(Recipe recipe, Map ingredient) throws Exception;

	// SELECT ONE
	public List getRecipe(int recipeNo) throws Exception;
	public Recipe getRecipeName(int recipeNo) throws Exception;

	// SELECT LIST
	public List<Recipe> getRecipeList(Search search) throws Exception;

	// SELECT LIST
	public List<Recipe> getMyRecipeList(Search search, String writerNickname) throws Exception;

	// UPDATE
	public void updateRecipe(Recipe recipe, Map ingredient) throws Exception;
	
	// UPDATE(Ingredient 제외)
	public void updateRecipeOnly(Recipe recipe) throws Exception;

	// DELETE
	public void deleteRecipe(int recipeNo) throws Exception;

	// SELECT ROW Count
	public int getTotalCount(Search search) throws Exception;

	// SELECT ROW Count
	public int getTotalMyCount(Search search, String userId) throws Exception;


}