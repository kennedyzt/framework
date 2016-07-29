package com.siping.rmi.beans.common;

import java.io.Serializable;

public class ResultMsg implements Serializable {
    private static final long serialVersionUID = -4917200971782481373L;
    private String msg;
    private Boolean isSuccess;

    public Boolean getIsSuccess() {
        return isSuccess;
    }

    public void setIsSuccess(Boolean isSuccess) {
        this.isSuccess = isSuccess;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public ResultMsg() {
        super();
    }

    public ResultMsg(Boolean isSuccess, String msg) {
        super();
        this.msg = msg;
        this.isSuccess = isSuccess;
    }

}
