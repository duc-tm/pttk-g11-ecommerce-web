/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.cart.CartDAO;
import dao.cart.CartDAOImpl;
import dao.item.ItemDAO;
import dao.item.ItemDAOImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Item.Item;
import model.order.Cart;

/**
 *
 * @author Admin
 */
public class OrderController extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/jsp/user-order.jsp");
        rd.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String route = request.getPathInfo();

        HttpSession session = request.getSession(false);
        if (session == null) {
            response.sendRedirect("/g11/home");
            return;
        }

        Integer userId = (Integer) session.getAttribute("userId");
        if (userId == null) {
            response.sendRedirect("/g11/auth/logout");
            return;
        }

        if (route != null && route.equalsIgnoreCase("/create")) {
            String itemIdStr = request.getParameter("itemIdStr");
            if (itemIdStr != null) {
                Cart cart = getCart(userId);
                int rowAffected = createOrder(itemIdStr, cart);
            }
        }
    }

    private int createOrder(String itemIdStr, Cart cart) {
        String[] itemId = itemIdStr.split(";");
        ItemDAO itemDAO = new ItemDAOImpl();

        List<Item> listItem = new ArrayList<>();

        for (String id : itemId) {
            try {
                int idNumber = Integer.parseInt(id);
                Item item = itemDAO.getItem(idNumber);
                listItem.add(item);
            } catch (NumberFormatException e) {
                System.err.println(e);
            }
        }

        CartDAO cartDAO = new CartDAOImpl();

        float totalPrice = 0;
        for (Item item : listItem) {
            int quantity = cartDAO.getItemAmountById(cart.getId(), item.getID());
            totalPrice += calcItemTotalPrice(item, quantity);
        }
    }

    private Cart getCart(int userId) {
        return new CartDAOImpl().getCartByUserID(userId);
    }

    private float calcItemTotalPrice(Item item, int quantity) {
        return (item.getPrice() - item.getPrice() * item.getDiscount()) * quantity;
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
