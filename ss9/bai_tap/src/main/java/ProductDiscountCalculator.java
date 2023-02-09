import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ProductDiscountCalculator", value = "/calculate")
public class ProductDiscountCalculator extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nameProduct = request.getParameter("product-description");
        double price = Double.parseDouble(request.getParameter("list-price"));
        double discount = Double.parseDouble(request.getParameter("discount-percent"));

        double priceDiscount = price * discount / 100;
        double totalPrice = price - priceDiscount;

        request.setAttribute("priceDiscount", priceDiscount);
        request.setAttribute("totalPrice", totalPrice);
        request.setAttribute("nameProduct", nameProduct);
        request.setAttribute("price", price);
        request.setAttribute("discount", discount);

        request.getRequestDispatcher("/index2.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
