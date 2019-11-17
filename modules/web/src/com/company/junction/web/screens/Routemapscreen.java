package com.company.junction.web.screens;

import com.haulmont.cuba.gui.WindowManager;
import com.haulmont.cuba.gui.components.AbstractFrame;
import com.haulmont.cuba.gui.components.Button;

import javax.inject.Inject;

public class Routemapscreen extends AbstractFrame {
    @Inject
    private Button takeCartBtn;

    public void takeCart() {
        takeCartBtn.setEnabled(false);
    }

    public void bringCart() {
        frame.openWindow("routeMapScreen", WindowManager.OpenType.DIALOG);
    }
}