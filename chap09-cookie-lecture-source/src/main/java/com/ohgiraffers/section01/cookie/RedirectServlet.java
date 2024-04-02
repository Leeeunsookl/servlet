package com.ohgiraffers.section01.cookie;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringReader;

@WebServlet("/redirect")
public class RedirectServlet extends HttpServlet {

    //url로 요청하기 때문에 do post가 아니고 do get

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");

        System.out.println("firstName = " + firstName);
        System.out.println("lastName = " + lastName);

        /* 필기
         *   null
         *   왜? request 객체는 1회 요청시  하나의 객체를 만들게 되는데
         *   2번의 요청이 일어나고 있기 때문에 값을 공유할 수 없다.
         *   그냥 재요청이란 개념이 있다고 생각하면 됨
         *  */

        /* 필기.
         *   쿠키를 사용하는 방법
         *   1. request에서 쿠키 목록을 배열 형태로 꺼내온다.
         *   2. 쿠키의 getName과 getValue를 이용해 쿠키에 담긴 값 꺼내기
         *  */

        Cookie[] cookies = req.getCookies();

        for (int i = 0; i < cookies.length; i++) {
            System.out.println("[cookie]" + cookies[i].getName() + " : " + cookies[i].getValue());
            //키와 값마냥
            if ("firstName".equals(cookies[i].getName())) {
                firstName = cookies[i].getValue();
            } else if ("lastName".equals(cookies[i].getName())) {
                lastName = cookies[i].getValue();
            }

        }
        StringBuilder responseText = new StringBuilder();
        responseText.append("<!doctype html>\n")
                .append("<html>\n")
                .append("<head></head>\n")
                .append("<body>\n")
                .append("<h1 firstName : " + firstName + "</h1>")
                .append("<h1 lastName : " + lastName + "</h1>")
                .append("</body>\n")
                .append("</html>");

        resp.setContentType("text/html; charset=UTF-8");

        PrintWriter out = resp.getWriter();
        out.print(responseText.toString());

        out.flush();
        out.close();
    }
    // 쿠키는 텍스트파일형태로 클라이언트 컴퓨터에 저장돼서 개인pc면 상관없지만
    // 공용 pc라면 보안문제 생길 가능성. 세션은 쿠키처럼 key-value로 구성되는데 서버에서 관리되니 보안 우수.
}

