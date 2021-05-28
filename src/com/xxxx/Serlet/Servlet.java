package com.xxxx.Serlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xxxx.mapper.RoomMapper;

import com.xxxx.entity.Room;
import com.xxxx.util.GetSqlSession;
import org.apache.ibatis.session.SqlSession;


@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
   protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      req.setCharacterEncoding("utf-8");
      String risknumber = req.getParameter("risknumber");
      String riskname = req.getParameter("riskname");
      String riskplace = req.getParameter("riskplace");
      String risktype = req.getParameter("risktype");
      String riskclass = req.getParameter("riskclass");
      String risklevel = req.getParameter("risklevel");
      String principal = req.getParameter("principal");
      String Floorprincipal= req.getParameter("Floorprincipal");
      String Householdleader= req.getParameter("Householdleader");
      String description1= req.getParameter("description1");
      String Precautions1= req.getParameter("Precautions1");
      String frequency1= req.getParameter("frequency1");
      String description2= req.getParameter("description2");
      String Precautions2= req.getParameter("Precautions2");
      String frequency2= req.getParameter("frequency2");
      String description3= req.getParameter("description3");
      String Precautions3= req.getParameter("Precautions3");
      String frequency3= req.getParameter("frequency3");
      String description4= req.getParameter("description4");
      String Precautions4= req.getParameter("Precautions4");
      String frequency4= req.getParameter("frequency4");
      String description5= req.getParameter("description5");
      String Precautions5= req.getParameter("Precautions5");
      String frequency5= req.getParameter("frequency5");
      String description6= req.getParameter("description6");
      String Precautions6= req.getParameter("Precautions6");
      String frequency6= req.getParameter("frequency6");
      String description7= req.getParameter("description7");
      String Precautions7= req.getParameter("Precautions7");
      String frequency7= req.getParameter("frequency7");
      String description8= req.getParameter("description8");
      String Precautions8= req.getParameter("Precautions8");
      String frequency8= req.getParameter("frequency8");
      String description9= req.getParameter("description9");
      String Precautions9= req.getParameter("Precautions9");
      String frequency9= req.getParameter("frequency9");
      String description10= req.getParameter("description10");
      String Precautions10= req.getParameter("Precautions10");
      String frequency10= req.getParameter("frequency10");


      //调用用户属性类
      Room room = new Room(risknumber,riskname,riskplace,risktype,riskclass,risklevel,principal,Floorprincipal,Householdleader,description1,Precautions1,frequency1,description2,Precautions2,frequency2,description3,Precautions3,frequency3,description4,Precautions4,frequency4,description5,Precautions5,frequency5,description6,Precautions6,frequency6,description7,Precautions7,frequency7,description8,Precautions8,frequency8,description9,Precautions9,frequency9,description10,Precautions10,frequency10);
      //接受判断函数返回值
      SqlSession session= GetSqlSession.createSqlSession();

      RoomMapper roomMapper=session.getMapper(RoomMapper.class);
      roomMapper.Insertdata(room);
      session.commit();
      resp.sendRedirect("finish.jsp");
      }
   }


