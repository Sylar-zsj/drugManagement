package intercepter;

import org.apache.struts2.ServletActionContext;

import com.manage.user.model.User;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;


/**
 * @description   登录拦截器   成功登录进入相应操作页面     否则访问其他页面时返回登录界面
 * @author zhangsijing
 *
 */
public class loginIntercepter extends MethodFilterInterceptor{

	@Override
	protected String doIntercept(ActionInvocation actionInvocation) throws Exception {
		//若已登录   则获取登录者信息
		User user=(User) ServletActionContext.getRequest().getSession().getAttribute("existUser");
		if(user == null ){
			ActionSupport actionSupport = (ActionSupport) actionInvocation.getAction();
			actionSupport.addActionError("点我登录");
			return "loginError";
		}else {
			return actionInvocation.invoke();
		}
	}

}
