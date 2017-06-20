/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.eldermoraes.apptest;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.inject.Inject;
import javax.mvc.Controller;
import javax.mvc.Models;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

/**
 *
 * @author eldermoraes
 */

@Controller
@Path("/testcontroller")
public class TestController {
    
    @Inject
    Models models;
    
    @GET
    public String testData(){
        TestData data = new TestData();
        
        try {
            InetAddress localhost = InetAddress.getLocalHost();
            
            data.setCanonicalHostName(localhost.getCanonicalHostName());
            data.setHostAddress(localhost.getHostAddress());
            
        } catch (UnknownHostException ex) {
            Logger.getLogger(TestController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        models.put("data", data);
        
        return "/index.jsp";
    }
    
}
