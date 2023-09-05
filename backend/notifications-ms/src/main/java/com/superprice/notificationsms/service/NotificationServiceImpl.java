package com.superprice.notificationsms.service;

import com.superprice.notificationsms.model.Notification;
import org.springframework.stereotype.Service;

@Service
public class NotificationServiceImpl implements NotificationService{

    @Override
    public Notification generic(int userId) {
        return new Notification("Suspicious Login", "A login from a foreign location has been attempted on your account.", "generic", 12212);
    }
    @Override
    public Notification delivery(int userId) {
        return new Notification("SuperPrice Order #13313 Arrival", "You're order from SuperPrice containing Milk, Eggs & 13 other items has arrived at" +
                "13 Windemere Place VIC.", "delivery", 13313);
    }
    @Override
    public Notification pricedrop(int userId) {
        return new Notification("Specials available from SuperPrice", "The prices on items or stores you have visited has been updated. You can now save" +
                " on the things you love such as 'Paper Towels'.", "pricedrop", 31131);
    }
}
