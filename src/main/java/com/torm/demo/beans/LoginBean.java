package com.torm.demo.beans;

import com.torm.demo.StringUtil;
import jakarta.enterprise.context.SessionScoped;
import jakarta.faces.context.ExternalContext;
import jakarta.faces.context.FacesContext;
import jakarta.inject.Named;
import lombok.Getter;
import lombok.Setter;

import java.io.IOException;
import java.io.Serializable;

@Named("loginBean")
@SessionScoped
@Getter
@Setter
public class LoginBean implements Serializable {

    private static final long serialVersionUID = 1L;
    private String username;
    private String password;
    private Boolean rememberMe;

    public void login() throws IOException {

        if (StringUtil.isNotEmpty(getUsername()) && StringUtil.isNotEmpty(getPassword())) {
            ExternalContext externalContext = FacesContext.getCurrentInstance().getExternalContext();
            externalContext.redirect(externalContext.getRequestContextPath() + "./dashboard.jsp");
        }
    }
}
