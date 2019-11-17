package com.company.junction.web.cart;

import com.company.junction.entity.Cart;
import com.haulmont.bali.util.ParamsMap;
import com.haulmont.cuba.gui.WindowManager;
import com.haulmont.cuba.gui.components.AbstractLookup;
import com.haulmont.cuba.gui.components.GroupTable;
import com.haulmont.cuba.gui.data.CollectionDatasource;

import javax.inject.Inject;
import java.util.UUID;

public class CartBrowse extends AbstractLookup {

    @Inject
    private CollectionDatasource<Cart, UUID> cartsDs;

    @Inject
    private GroupTable<Cart> cartsTable;

    public void openRouteMap() {
    //    frame.openFrame("routeMapScreen", WindowManager.OpenType.DIALOG, ParamsMap.of("cart", cartsTable.getSelected()));
    }
}
