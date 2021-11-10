package action.buyer;

import com.opensymphony.xwork2.ActionSupport;
import model.da.BuyerDA;
import model.to.Product;
import org.apache.struts2.interceptor.SessionAware;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class BuyProduct extends ActionSupport implements SessionAware {

    private Map<String,Object> session;
    private List<Product> products;

    @Override
    public String execute() throws Exception {
        BuyerDA da = getBuyerDA();
        List<Product> products = da.selectProducts();
        setProducts(products);
        return SUCCESS;
    }
    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    public Map<String, Object> getSession() {
        return session;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    public BuyerDA getBuyerDA(){return new BuyerDA();}
}
