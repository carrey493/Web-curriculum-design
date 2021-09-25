package com.service;

import com.service.impl.AccountServiceImpl;
import com.service.impl.NewsServiceImpl;

public class ServiceFactory {
    private static final NewsService newsService = create();
    private static final AccountService accoutService = accountcreate();

    private static NewsService create() {
        return new NewsServiceImpl();
    }
    public static NewsService getNewsService() {
        return newsService;
    }

    private  static  AccountService accountcreate(){
        return new AccountServiceImpl();
    }
    public static AccountService getAccoutService(){
        return accoutService;
    }
}
