/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.eldermoraes.apptest;

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.core.Context;

/**
 *
 * @author eldermoraes
 */

@Path("/testcontroller")
public class TestController {
    
    @GET
    @Path("/testdata")
    public void testData(@Context HttpServletRequest request, 
                         @Context HttpServletResponse response){
        TestData data = new TestData();
        
        try {
            InetAddress localhost = InetAddress.getLocalHost();
            
            data.setCanonicalHostName(localhost.getCanonicalHostName());
            data.setHostAddress(localhost.getHostAddress());
            
            request.setAttribute("data", data);
            RequestDispatcher rd = request.getRequestDispatcher("/test.jsp");
            rd.forward(request, response);
        } catch (UnknownHostException ex) {
            Logger.getLogger(TestController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ServletException | IOException ex) {
            Logger.getLogger(TestController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }    
    
}
