package action.buyer;

import com.opensymphony.xwork2.ActionSupport;
import model.da.BuyerDA;
import model.to.Validator;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

public class Purchase extends ActionSupport implements SessionAware {
    Map<String, Object> session;

    @Override
    public String execute() throws Exception {
        session.put("prodId", getId());
        session.put("count", getCount());
        BuyerDA da = getBuyerDA();
        int count = Integer.parseInt(da.selectCoutn(getId()));
        count = count - Integer.parseInt(getCount());
        da.updateCount(count, getId());
        da.commit();
        return SUCCESS;
    }

    private String id;
    private String count;
    private String price;
    private String totalPrice;

    @Override
    public void validate() {
        Validator v = new Validator();
        BuyerDA da = getBuyerDA();

        if(v.isEmpty(getId()))
            addFieldError("id", "یک شناسه وارد کنید.");
        if(v.isEmpty(getCount()) || !v.isNumeric(getCount()))
            addFieldError("count","تعداد وارد کنید.");
        try {
            if(Integer.parseInt(getCount()) > Integer.parseInt(da.selectCoutn(getId())))
                addFieldError("count" , "مقدار انتخاب شده بیشتر از مقدار محصول است.");
        }catch (Exception e){e.printStackTrace();}
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(String totalPrice) {
        this.totalPrice = totalPrice;
    }
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCount() {
        return count;
    }

    public void setCount(String count) {
        this.count = count;
    }


    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    public BuyerDA getBuyerDA(){return new BuyerDA();}
}
