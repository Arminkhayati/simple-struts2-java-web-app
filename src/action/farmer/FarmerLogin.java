package action.farmer;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import model.da.FarmerDA;
import model.to.Validator;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

public class FarmerLogin extends ActionSupport implements SessionAware {
    private Map<String,Object> session;



    @Override
    public String execute() throws Exception {
        System.out.println("وارد شد.");
        this.session.put("user",username);
        return SUCCESS;
    }

    private String username;
    private String password;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public void setSession(Map<String,Object> session){
        this.session = session;
    }

    @Override
    public void validate() {
        Validator v = new Validator();
        FarmerDA da = getFarmerDA();

        if(v.isEmpty(getUsername()))
            addFieldError("username", "نام کاربری وارد کنید.");
        if(v.isEmpty(getPassword()))
            addFieldError("password", "رمز عبور وارد کنید.");
        try {
            if(!da.selectUser(getUsername(),getPassword()))
                addFieldError("username", "نام کاربری یا رمز عبور اشتباه است.");
        }catch (Exception e){e.printStackTrace();}
    }
    public FarmerDA getFarmerDA(){
        return new FarmerDA();
    }
}
