package action.farmer;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import model.da.FarmerDA;
import model.to.Farmer;
import model.to.Validator;

public class FarmerRegister extends ActionSupport implements ModelDriven {

    @Override
    public String execute() throws Exception {
        FarmerDA da = getFarmerDA();
        da.insert(farmer);
        da.commit();
        return SUCCESS;
    }

    Farmer farmer = new Farmer();

    @Override
    public Object getModel() {
        return farmer;
    }

    @Override
    public void validate() {
        Validator v = new Validator();
        FarmerDA da = getFarmerDA();

        if(!v.isPeAlphabetical(farmer.getFname()) || v.isEmpty(farmer.getFname()))
            addFieldError("fname", "جای خالی را با حروف فارسی پر کنید.");
        if(!v.isPeAlphabetical(farmer.getLname()) || v.isEmpty(farmer.getLname()))
            addFieldError("fname", "جای خالی را با حروف فارسی پر کنید.");
        if(!v.isEnAlphaNumberic(farmer.getUsername()) || v.isEmpty(farmer.getUsername()))
            addFieldError("username", "با حروف و اعداد انگلیسی پر شود.");
        if(v.isEmpty(farmer.getPassword()))
            addFieldError("password", "رمز عبور را وارد کنید.");
        if(!v.sexValidator(farmer.getSex()) || v.isEmpty(farmer.getSex()))
            addFieldError("sex", "مقدار مرد یا زن وارد کنید.");
        if(!v.isNumeric(farmer.getPhone()) && v.isLength(farmer.getPhone() , 11))
            addFieldError("phone", "مقدار را درست وارد کنید.");
        if(!v.isEmpty(farmer.getNationalId()) && !v.isNumeric(farmer.getNationalId()))
            addFieldError("nationalId", "مقدار را درست وارد کنید.");
        if(!v.isEmpty(farmer.getZip()) && !v.isNumeric(farmer.getZip()) && v.isLength(farmer.getZip(),16))
            addFieldError("zip", "مقدار را درست وارد کنید.");
        try {
            if(da.selectUser(farmer.getUsername()))
                addFieldError("username", "نام کاربری وجود دارد.");
        }catch (Exception e){e.printStackTrace();}
    }

    public FarmerDA getFarmerDA(){
        return new FarmerDA();
    }
}
