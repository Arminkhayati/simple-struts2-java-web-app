package action.buyer;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import model.da.BuyerDA;
import model.to.Buyer;
import model.to.Validator;

public class BuyerRegister extends ActionSupport implements ModelDriven {


    @Override
    public String execute() throws Exception {
        BuyerDA da = getBuyerDA();
        da.insert(buyer);
        da.commit();
        return SUCCESS;
    }

    Buyer buyer = new Buyer();

    @Override
    public Object getModel() {
        return buyer;
    }

    @Override
    public void validate() {
        Validator v = new Validator();
        BuyerDA da = getBuyerDA();
        if(!v.isPeAlphabetical(buyer.getFname()) || v.isEmpty(buyer.getFname()))
            addFieldError("fname", "جای خالی را با حروف فارسی پر کنید.");
        if(!v.isPeAlphabetical(buyer.getLname()) || v.isEmpty(buyer.getLname()))
            addFieldError("fname", "جای خالی را با حروف فارسی پر کنید.");
        if(!v.isEnAlphaNumberic(buyer.getUsername()) || v.isEmpty(buyer.getUsername()))
            addFieldError("username", "با حروف و اعداد انگلیسی پر شود.");
        if(v.isEmpty(buyer.getPassword()))
            addFieldError("password", "رمز عبور را وارد کنید.");
        if(!v.isNumeric(buyer.getPhone()) && v.isLength(buyer.getPhone(), 11))
            addFieldError("phone", "مقدار را درست وارد کنید.");
        try {
            if(da.selectUser(buyer.getUsername()))
                addFieldError("username", "نام کاربری وجود دارد.");
        }catch (Exception e){e.printStackTrace();}
    }

    public BuyerDA getBuyerDA(){return new BuyerDA();}
}
