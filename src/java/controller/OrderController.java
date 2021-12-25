/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.cart.CartDAOImpl;
import dao.order.OrderDAO;
import dao.order.OrderDAOImpl;
import dao.user.UserDAOImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javafx.util.Pair;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.book.BookItem;
import model.user.User;

/**
 *
 * @author Admin
 */
public class OrderController extends HttpServlet {
    
    private OrderDAO orderDAO;

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public void init(ServletConfig config) throws ServletException {
        super.init(config);

        orderDAO = new OrderDAOImpl();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String route = request.getPathInfo();

        Integer userId = getUserIdFromSession(request.getSession(false));

        if (userId == null) {
            response.sendRedirect("/g11/auth/logout");
            return;
        }

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

        Integer userId = getUserIdFromSession(request.getSession(false));

        if (userId == null) {
            response.sendRedirect("/g11/auth/logout");
            return;
        }

        if (route == null) {

        } else if (route.equalsIgnoreCase("/create")) {
            String selectedItemJSON = request.getParameter("selectedItemJSON");
            String selectedPaymentType = request.getParameter("selectedPaymentType");
            String selectedShipmentType = request.getParameter("selectedShipmentType");

            createOrder(userId, selectedItemJSON, selectedPaymentType, selectedShipmentType);
        }
    }

    private boolean createOrder(int userId, String selectedItemJSON, String selectedPaymentType, String selectedShipmentType) {
        List<Pair<Integer, Integer>> selectedItemIdAndQuantity = parseSelectedItem(selectedItemJSON);
        
//        orderDAO.createOrder(userId, order, 0, 0, pair)
        return true;
    }

    private List<Pair<Integer, Integer>> parseSelectedItem(String selectedItemJSON) {
        List<Pair<Integer, Integer>> selectedItemIdAndQuantity = new ArrayList<>();

        String removedBracketStr = selectedItemJSON.substring(1, selectedItemJSON.length() - 1);
        String[] selectedItemArr = removedBracketStr.split(",");

        for (String selectedItem : selectedItemArr) {
            String[] tokens = selectedItem.split(":");
            int itemId = Integer.parseInt(tokens[0].substring(1, tokens[0].length() - 1));
            int quantity = Integer.parseInt(tokens[1]);
            
            selectedItemIdAndQuantity.add(new Pair(itemId, quantity));
        }

        return selectedItemIdAndQuantity;
    }

    private int getCart(int userId) {
        return new CartDAOImpl().getCartByUserID(userId);
    }

    private float calcItemTotalPrice(BookItem item, int quantity) {
        return (item.getPrice() - item.getPrice() * item.getDiscount()) * quantity;
    }

    private Pair<List<BookItem>, List<Integer>> getCartItem(int userId) {
        int cartId = new CartDAOImpl().getCartByUserID(userId);
//        Pair<List<BookItem>, List<Integer>> listItem = new ItemDAOImpl().getItemOfCartByCartID(cart.getId());

        return null;
    }

    private Integer getUserIdFromSession(HttpSession session) {
        if (session == null || session.getAttribute("userId") == null) {
            return null;
        }

        int userId = (Integer) session.getAttribute("userId");

        return userId;
    }

    private void sendResponse(HttpServletResponse response, String responseData) throws IOException {
        response.setHeader("Content-Type", "text/plain");
        response.setCharacterEncoding("UTF-8");

        PrintWriter writer = response.getWriter();
        writer.write(responseData);
        writer.close();
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
