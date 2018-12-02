

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Cookies extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Cookie cookie=new Cookie("test_cookie","123");
       // cookie.setComment("Just For Testing");
        cookie.setMaxAge(36000);
      // cookie.setPath("/articles");
        cookie.setSecure(false);
        cookie.setValue("321");
       //cookie.setDomain("www.meradomain.com");
        //cookie.setVersion(0);
        
        response.addCookie(cookie);
        PrintWriter pw=response.getWriter();
        pw.print("<html><head></head><body>");
        Cookie ck[]=request.getCookies();
        if(ck==null)
        {
            pw.print("<p>This is first time the page is requested </p>");
            pw.print("<p>And therefore no cookies found</p></body></html>");
        }
        else
        {
        pw.print("<p>Welcome Again........Cookies found</p>");
        for(int i=0;i<ck.length;i++)
        {
            pw.print("<p>Name:" +ck[i].getName()+ "</p>");
            pw.print("<p>Value:" +ck[i].getValue()+"</p>");
            pw.print("<p>Domain :"+ck[i].getDomain()+"</p>");
        }
    }
    }
}