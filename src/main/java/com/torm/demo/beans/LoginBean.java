package com.torm.demo.beans;

import java.io.IOException;
import java.io.Serializable;

import com.torm.demo.StringUtil;
import jakarta.enterprise.context.SessionScoped;
import jakarta.faces.application.FacesMessage;
import jakarta.faces.context.ExternalContext;
import jakarta.faces.context.FacesContext;
import jakarta.inject.Named;
import lombok.Getter;
import lombok.Setter;

@Named("loginBean")
@SessionScoped
@Getter
@Setter
public class LoginBean implements Serializable {
    /**
     *
     */
    private static final long serialVersionUID = 1L;
    private String username;
    private String password;

    private String errorMessage;

    public void loginUser() {
        try {
            if(StringUtil.isNotEmpty(username) && StringUtil.isNotEmpty(password)){
                errorMessage = "";
                FacesContext facesContext = FacesContext.getCurrentInstance();
                ExternalContext ec = facesContext.getExternalContext();
                ec.redirect("dashboard.xhtml");
            }
         else{
                FacesContext facesContext = FacesContext.getCurrentInstance();
             errorMessage = "Please enter your credentials";
                facesContext.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_INFO, errorMessage, null));

            }

        } catch (Exception e) {
        }
    }

    public void register() throws IOException {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        ExternalContext ec = facesContext.getExternalContext();
        ec.redirect("register.jsp");
    }

    public String logout() {

        FacesContext.getCurrentInstance().getExternalContext().invalidateSession();
        return "/login?faces-redirect=true";
    }
}
