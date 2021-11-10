package action.farmer;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import model.da.ProductDA;
import model.to.Product;
import model.to.Validator;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

public class InsertProduct extends ActionSupport implements ModelDriven,SessionAware {
    private Map<String,Object> session;

    @Override
    public String execute() throws Exception {
        ProductDA da = getProductDA();
        String user = (String) session.get("user");
        System.out.println(user);
        da.insert(product, user);
        da.commit();
        return SUCCESS;
    }

    Product product = new Product();
    @Override
    public Object getModel() {
        return product;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    @Override
    public void validate() {
        Validator v = new Validator();
        if(!v.isPeAlphabetical(product.getName()) || v.isEmpty(product.getName()))
            addFieldError("name", "نام فارسی وارد کنید.");
        if(!v.isNumeric(product.getCount()) || v.isEmpty(product.getCount()))
            addFieldError("count", "عدد وارد کنید.");
        if(!v.prodType(product.getType()) || v.isEmpty(product.getType()))
            addFieldError("type", "میوه یا سبزیجات یا غلات یا خشکبار را وارد کنید.");
//        if(!v.dateValid(product.getDate()) && !v.isEmpty(product.getDate()))
//            addFieldError("date", "به فرمت روبرو وارد کنید : 31/06/1395");
    }

    public ProductDA getProductDA(){
        return new ProductDA();
    }

}
