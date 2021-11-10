package action.buyer;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

public class Buy extends ActionSupport implements SessionAware {
    Map<String, Object> session;

    @Override
    public String execute() throws Exception {
        System.out.println(session.get("prodId"));
        System.out.println();
        System.out.println(session.get("user"));
        return SUCCESS;
    }


    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }


}
