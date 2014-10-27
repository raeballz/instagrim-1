/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uk.ac.dundee.computing.aec.instagrim.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import uk.ac.dundee.computing.aec.instagrim.stores.*;

/**
 *
 * @author Andrew
 */


@WebServlet(name = "Logout", urlPatterns = {"/Logout"})
public class Logout extends HttpServlet 
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
    throws ServletException, IOException 
    {
        LoggedIn lg;
        
        lg = (LoggedIn) request.getSession().getAttribute("LoggedIn");
        lg.setLoginState(false);
        request.getSession().invalidate();
        response.sendRedirect("/Instagrim/index.jsp");
        
    }
}
