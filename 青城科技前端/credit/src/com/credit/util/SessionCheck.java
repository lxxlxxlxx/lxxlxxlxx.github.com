/***** SESSION拦截器，验证是否为空 *****/
package com.credit.util;

import java.util.Map;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

/**
 * SESSION拦截器，适用于部分ACTION方法执行前的调用，
 * 并不是所有的ACTION在执行前调用调用SESSION拦截器，
 * 因此需要在配置文件中指定哪些方法不需要调用，没有
 * 配置的ACTION方法就说明需要调用SESSION拦截器
 * 
 */
public class SessionCheck extends MethodFilterInterceptor {
    private static final long serialVersionUID = 1L;

    @Override
    @SuppressWarnings({ "rawtypes", "unchecked" })
    protected String doIntercept(ActionInvocation invocation) throws Exception {
        Map map = invocation.getInvocationContext().getSession();
        if (map.get("uid") == null) {
            map.put("sessionNull", "请登录！");
            // return Action.LOGIN;
            return "reLogin";
        } else {
            return invocation.invoke();
        }
    }

}
