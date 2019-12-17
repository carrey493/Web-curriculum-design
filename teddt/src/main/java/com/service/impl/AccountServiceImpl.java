package com.service.impl;

import com.entity.Accounts;
import com.service.AccountService;
import com.util.DataSourceUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Logger;

public class AccountServiceImpl implements AccountService {
    private static Logger logger = Logger.getLogger(AccountServiceImpl.class.getName());
    @Override
    public boolean Verification(Accounts accounts) {
        String sql = "SELECT * FROM account WHERE username=? AND password=?";
        System.out.print(accounts.getUsername());
        System.out.print(accounts.getPwd());
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql);)
              {
            st.setString(1, accounts.getUsername());
            st.setString(2, accounts.getPwd());
                  ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return true;//如果存在即反馈为true 不需要调用出来
            }
        }catch (SQLException e) {
            logger.warning(e.getMessage());
        }

        return false;
    }
}
