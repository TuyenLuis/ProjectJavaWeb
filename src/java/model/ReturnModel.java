/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author a5lhp
 */
public class ReturnModel {
    private String status;
    private Object returnObject;

    public ReturnModel(String status, Object returnObject) {
        this.status = status;
        this.returnObject = returnObject;
    }

    public ReturnModel() {
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Object getReturnObject() {
        return returnObject;
    }

    public void setReturnObject(Object returnObject) {
        this.returnObject = returnObject;
    }
    
}
