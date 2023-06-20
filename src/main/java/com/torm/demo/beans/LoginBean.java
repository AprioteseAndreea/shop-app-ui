package com.torm.demo.beans;

import java.io.IOException;
import java.io.Serializable;

import jakarta.enterprise.context.SessionScoped;
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

    public void loginUser() {
        try {
            FacesContext facesContext = FacesContext.getCurrentInstance();
            ExternalContext ec = facesContext.getExternalContext();
            ec.redirect("dashboard.xhtml");

        } catch (Exception e) {
        }
    }

    public void register() throws IOException {

    }

    public String logout() {

        FacesContext.getCurrentInstance().getExternalContext().invalidateSession();
        return "/login?faces-redirect=true";
    }
}
