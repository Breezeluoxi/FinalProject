package com.tuogen.controller;

import com.tuogen.model.Buyer;
import com.tuogen.model.OnlineUser;
import com.tuogen.model.Type;
import com.tuogen.service.BuyerService;
import com.tuogen.service.impl.BuyerServiceImpl;
import com.tuogen.utils.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;


@WebServlet(name = "BuyerServlet",urlPatterns = "/Buyer/*")
public class BuyerServlet extends BaseServlet {
    BuyerService buyerService=new BuyerServiceImpl();

    public void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String userAccout=req.getParameter("userName");
        String userPwd=req.getParameter("passWord");
        Buyer buyer=checkIdentity(userAccout,userPwd);

        if(buyer==null){
            System.out.println("登陆失败");
            resp.sendRedirect("../view/login.jsp");
        }else{
            System.out.println("登陆成功");
            Buyer_logInit(req,resp,buyer);
        }
    }

    private void Buyer_logInit(HttpServletRequest req, HttpServletResponse resp, Buyer buyer) throws IOException, ServletException {
        HttpSession session = req.getSession();

        //设置session中islong=1
        session.setAttribute("isLogin",1);

        //设置session中的buyer
        session.setAttribute("buyer",buyer);

        //添加OnlineUser session属性
        addOnlineUser(req,resp,buyer);

        //获取所有商品

        //返回
        resp.sendRedirect("../view/index.jsp");
//        req.getRequestDispatcher("goodsList").forward(req,resp);
    }


    private void addOnlineUser(HttpServletRequest req, HttpServletResponse resp, Buyer buyer) {
        HttpSession session = req.getSession();
        //获取时间
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        String date = df.format(new Date());// new Date()为获取当前系统时间，也可使用当前时间戳
        OnlineUser onlineUser=new OnlineUser(Type.BUYER,buyer,date);
        session.setAttribute("onlinerUser",onlineUser);
    }

    private Buyer checkIdentity(String userAccout, String userPwd) {
        Buyer buyer=new Buyer();
        buyer=buyerService.loginUseID(userAccout,userPwd);
        if(buyer!=null) return buyer;
        buyer=buyerService.loginUseEmail(userAccout,userPwd);
        if(buyer!=null) return buyer;
        buyer=buyerService.loginUsePhonNum(userAccout,userPwd);
        return buyer;
    }
}
