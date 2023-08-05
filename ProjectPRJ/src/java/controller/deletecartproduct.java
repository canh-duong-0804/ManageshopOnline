/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import dal.DAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import model.Cart;
import model.Item;
import model.Product;

/**
 *
 * @author admin
 */
public class deletecartproduct extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("OK");
        DAO d = new DAO();
        List<Product> list = d.getAllProduct();
        Cookie[] arr = request.getCookies();
        String txt = "";
        if (arr != null) {
            for (Cookie o : arr) {
                if (o.getName().equals("cart")) {
                    txt += o.getValue();
                    o.setMaxAge(0);
                    response.addCookie(o);
                }
            }
        }
        Cart cart = new Cart(txt, list);
        String num_raw = request.getParameter("num");
        String id_raw = request.getParameter("id");
       
            Product p = d.getProductById(id_raw);
           
            System.out.println("check1: "+request.getParameter("deleteproduct"));
            System.out.println("pid123: "+request.getParameter("pid"));
         
                
                    cart.removeItem(Integer.parseInt(request.getParameter("pid")));
               
        
        List<Item> items = cart.getItems();
        txt = "";
        if (items.size() > 0) {
            txt = items.get(0).getProduct().getProduct_id() + ":"
                    + items.get(0).getQuantity();
            for (int i = 1; i < items.size(); i++) {
                txt += "/" + items.get(i).getProduct().getProduct_id() + ":"
                        + items.get(i).getQuantity();
            }
        }

        Cookie c = new Cookie("cart", txt);
        c.setMaxAge(2 * 24 * 60 * 60);
        response.addCookie(c);
        request.setAttribute("cart", cart);
        request.getRequestDispatcher("cart.jsp").forward(request, response);

    }
}
