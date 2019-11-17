package com.company.junction.service;

import com.company.junction.entity.Address;
import com.company.junction.entity.Cart;
import com.haulmont.cuba.core.EntityManager;
import com.haulmont.cuba.core.Persistence;
import com.haulmont.cuba.core.Transaction;
import com.haulmont.cuba.core.global.DataManager;
import com.haulmont.cuba.core.global.View;
import com.haulmont.cuba.security.entity.User;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;
import java.util.UUID;


@Service(CartService.NAME)
public class CartServiceBean implements CartService {
    @Inject
    private Persistence persistence;
    @Inject
    protected DataManager dataManager;

    @Override
    public List<Cart> getCarts() {
        return persistence.getEntityManager()
                .createQuery("select e from eyrun$Cart e")
                .getResultList();
    }

    @Override
    public void createCart(User user, Address begin, Address end) {
        Cart cart = dataManager.create(Cart.class);
        cart.setUser(user);
        cart.setAddressBegin(begin);
        cart.setAddressBegin(end);
    }
}