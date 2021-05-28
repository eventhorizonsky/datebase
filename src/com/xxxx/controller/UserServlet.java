package com.xxxx.controller;

import com.xxxx.service.UserService;


import com.xxxx.entity.vo.MessageModel;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class UserServlet extends HttpServlet {
    //实例化Usersevice对象
    private UserService userService=new UserService();

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        接收请求
        String username=request.getParameter("username");
        String password=request.getParameter("password");

//        调用service层，返回消息模型对象
        MessageModel messageModel=userService.userLogin(username,password);
//        判断消息模型
    if(messageModel.getCode()==1){
        request.getSession().setAttribute("user",messageModel.getObject());
        request.getSession().setAttribute("username",username);
        response.sendRedirect("index.jsp");
    }else {
        request.setAttribute("messageModel",messageModel);
        request.getRequestDispatcher("login.jsp").forward(request,response);

    }


    }



}
