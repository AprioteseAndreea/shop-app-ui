package com.torm.demo.beans;

import jakarta.annotation.PostConstruct;
import jakarta.enterprise.context.SessionScoped;
import jakarta.inject.Named;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Named("dashboardBean")
@SessionScoped
@Getter
@Setter
public class DashboardBean implements Serializable {

    private static final long serialVersionUID = 1L;
    private List<String> products;

    @PostConstruct
    void init()
    {
        this.products = new ArrayList<>();
        this.products.add("Jacket Nebunie 1");
        this.products.add("Jacket Nebunie 2");
        this.products.add("Jacket Nebunie 3");
    }
}
