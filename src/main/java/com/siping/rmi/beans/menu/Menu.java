package com.siping.rmi.beans.menu;

import java.io.Serializable;
import java.util.List;

import com.siping.rmi.beans.common.BaseData;

public class Menu extends BaseData implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer parentId;
    private String text;
    private String icon;
    private String selectedIcon;
    private String href;
    private List<Menu> nodes;

    public String getText() {
        return text;
    }

    public String getIcon() {
        return icon;
    }

    public String getSelectedIcon() {
        return selectedIcon;
    }

    public String getHref() {
        return href;
    }

    public void setText(String text) {
        this.text = text;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public void setSelectedIcon(String selectedIcon) {
        this.selectedIcon = selectedIcon;
    }

    public void setHref(String href) {
        this.href = href;
    }

    public List<Menu> getNodes() {
        return nodes;
    }

    public void setNodes(List<Menu> nodes) {
        this.nodes = nodes;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }
}
