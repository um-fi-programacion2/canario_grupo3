package view;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;




public class LogoutAction extends ActionSupport {
    private Object session;

public LogoutAction() {
}

    @Override
    public String execute() throws Exception {
    try {
                ActionContext.getContext().getSession().clear();

        return "OK";
    } catch (IllegalStateException e) {
        return "FAIL";
    }
}

}