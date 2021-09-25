package com.service;

import com.entity.Accounts;

public interface AccountService {
    /**
     * 验证账号
     * @param accounts
     * @return
     */
    public boolean Verification(Accounts accounts);
}
