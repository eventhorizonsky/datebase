package com.xxxx.test;

import com.xxxx.entity.Room;
import com.xxxx.entity.User;
import com.xxxx.mapper.RoomMapper;
import com.xxxx.mapper.UserMapper;
import com.xxxx.util.GetSqlSession;
import org.apache.ibatis.session.SqlSession;

public class Test {
    public static void main(String[] args) {
        SqlSession session= GetSqlSession.createSqlSession();
//        UserMapper userMapper=session.getMapper(UserMapper.class);
//        User user =userMapper.queryUserByName("admin");
//        System.out.println(user);
        RoomMapper roomMapper=session.getMapper(RoomMapper.class);

        session.commit();

    }
}
