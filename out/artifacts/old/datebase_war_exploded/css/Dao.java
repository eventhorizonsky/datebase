package com.xxxx.mapper;

import java.sql.Connection;
import java.sql.Statement;

import com.xxxx.DBUtil.DBUtil;

import com.xxxx.entity.Room;

public class Dao {

    public boolean add(Room room) {
        //将数据插入数据库的SQL语句
        String sql = "insert into room (risknumber,riskname,riskplace,risktype,riskclass,risklevel,principal,Floorprincipal,Householdleader,description) values('"+ room.getRisknumber() + "','"+ room.getRiskname() +"','"+ room.getRiskplace() +"','"+room.getRisktype() +"','"+ room.getRiskclass() +"','"+room.getRisklevel()+"','"+ room.getPrincipal() +"','"+room.getFloorprincipal()+"','"+room.getHouseholdleader()+"','"+room.getDescription()+"')";
        // 创建数据库链接
        Connection conn = DBUtil.getConn();
        Statement state = null;
        boolean f = false;
        int a = 0;

        try {
            state = conn.createStatement();
            a=state.executeUpdate(sql);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 关闭z 连接
            DBUtil.close(state, conn);
        }

        if (a > 0) {
            f = true;
        }
        return f;

    }


}