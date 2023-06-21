package com.torm.demo.beans;

import jakarta.enterprise.context.SessionScoped;
import jakarta.faces.context.ExternalContext;
import jakarta.faces.context.FacesContext;
import jakarta.inject.Named;

import jakarta.enterprise.context.RequestScoped;

import java.io.Serializable;
import java.util.Map;

@Named("productBean")
@SessionScoped
public class ProductBean implements Serializable
{
    private static final long serialVersionUID = 1L;

    public String getProductDetails() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        ExternalContext externalContext = facesContext.getExternalContext();
        String productIdParam = externalContext.getRequestParameterMap().get("productId");

        if (productIdParam != null) {
            try {
                int productId = Integer.parseInt(productIdParam);
                // Retrieve the product details based on the productId
                // ...
                // Return the product details
                return "Product details for ID: " + productId;
            } catch (NumberFormatException e) {
                // Handle invalid productId parameter
                e.printStackTrace();
            }
        }

        // Handle missing or invalid productId parameter
        return "Invalid product ID";
    }
}
