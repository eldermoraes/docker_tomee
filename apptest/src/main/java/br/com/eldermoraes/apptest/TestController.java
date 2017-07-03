/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.eldermoraes.apptest;

import br.com.eldermoraes.apptest.beans.TestData;
import br.com.eldermoraes.apptest.business.AccessBean;
import br.com.eldermoraes.apptest.entities.Access;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.inject.Inject;
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
    
    @Inject
    private AccessBean accessBean;
    
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
            
            try{
                accessBean.add();

                List<Access> list = accessBean.getAll();
                StringBuilder listString = new StringBuilder();
                for (Access access: list){
                    listString.append(access.getDescription());
                    listString.append("<br>");
                }
                request.setAttribute("access", listString);
            } catch(Exception e){
                request.setAttribute("access", "Database is not available");
            }

            RequestDispatcher rd = request.getRequestDispatcher("/test.jsp");
            rd.forward(request, response);
        } catch (UnknownHostException ex) {
            Logger.getLogger(TestController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException | ServletException ex) {
            Logger.getLogger(TestController.class.getName()).log(Level.SEVERE, null, ex);
        } 
        
        
    }    
    
}
