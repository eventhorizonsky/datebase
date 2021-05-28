package com.xxxx.service;

import com.xxxx.entity.User;
import com.xxxx.mapper.UserMapper;
import com.xxxx.util.GetSqlSession;
import com.xxxx.util.StringUtil;
import com.xxxx.entity.vo.MessageModel;
import org.apache.ibatis.session.SqlSession;

//业务逻辑
public class UserService {
    public MessageModel userLogin(String username, String password) {
        MessageModel messageModel=new MessageModel();
        //                    回显数据
        User u=new User();
        u.setUsername(username);
        u.setPassword(password);
        messageModel.setObject(u);

        if (StringUtil.isEmpty(username)){

//                将状态码、提示信息、回显数据设置到消息模型对象中，返回消息模型对象
            messageModel.setCode(0);
            messageModel.setMsg("用户姓名不能为空");

            return messageModel;


        }if (StringUtil.isEmpty(password)){

//                将状态码、提示信息、回显数据设置到消息模型对象中，返回消息模型对象
            messageModel.setCode(0);
            messageModel.setMsg("用户密码不能为空");

            return messageModel;


        }

        //                调用mapper查询方法，通过用户名查询用户对象
        SqlSession session= GetSqlSession.createSqlSession();
        UserMapper userMapper=session.getMapper(UserMapper.class);
        User user=userMapper.queryUserByName(username);

//        参数非空判断


//        判断用户对象是否为空
            if (user==null){
                //                将状态码、提示信息、回显数据设置到消息模型对象中，返回消息模型对象
                messageModel.setCode(0);
                messageModel.setMsg("用户不存在");
                return messageModel;
            }
//            判断密码是否正确
        if (!password.equals(user.getPassword())){

            messageModel.setCode(0);
            messageModel.setMsg("密码错误");
            return messageModel;

        }
        //登陆成功，将用户信息设置到消息模型中
        messageModel.setObject(user);
        return messageModel;

    }
}
