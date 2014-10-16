package rest;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import model.Category;
import dao.CategoryImpl;

@Path("/CategoryService")
public class CategoryService {
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public String  getList(){
		List<Category> categories;
		CategoryImpl cateimpl = new CategoryImpl();
		categories = cateimpl.findAll(Category.class);
		JsonArray jArray = new JsonArray();
		for (int i = 0; i < categories.size(); i++) {
			JsonElement sJson = new Gson().toJsonTree(categories.get(i));
			jArray.add(sJson);
		}
		return jArray.toString();
	}
}
