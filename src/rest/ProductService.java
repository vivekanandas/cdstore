package rest;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import model.Cd;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;

import dao.CdImpl;

@Path("/ProductService")
public class ProductService {
	@Path("{ProductListByCategory}")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public String  getProductListByCategory(@PathParam("ProductListByCategory")String categoryName ){
		List<Cd> cds;
		CdImpl cdimpl = new CdImpl();
		cds = cdimpl.getProductListByCategory(categoryName);
		JsonArray jArray = new JsonArray();
		for (int i = 0; i < cds.size(); i++) {
			JsonElement sJson = new Gson().toJsonTree(cds.get(i));
			jArray.add(sJson);
		}
		return jArray.toString();
		//return "{'categoryName':'"+categoryName+"'}";
	}
}
