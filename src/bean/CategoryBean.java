package bean;

import java.util.ArrayList;
import java.util.List;

public class CategoryBean {
	public List<String> getItems() {
        List<String> list = new ArrayList<String>();
        list.add("Thing1");
        list.add("Thing2");
        list.add("Thing3");
        return list;
    }
}
