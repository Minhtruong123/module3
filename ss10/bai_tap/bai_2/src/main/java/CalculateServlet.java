import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CalculateServlet", value = "/calculate")
public class CalculateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int firstOperand = Integer.parseInt(request.getParameter("first-operand"));
        int secondOperand = Integer.parseInt(request.getParameter("second-operand"));
        String operator = request.getParameter("operator");
        int result = 0;
        switch (operator) {
            case "+":
                result = firstOperand + secondOperand;
                break;
            case "-":
                result = firstOperand - secondOperand;
                break;
            case "*":
                result = firstOperand * secondOperand;
                break;
            case "/":
                if (secondOperand == 0) {
                    throw new ArithmeticException("Second operand not zero");
                } else {
                    result = firstOperand / secondOperand;
                    break;
                }
        }

        request.setAttribute("result", result);
        request.getRequestDispatcher("/result.jsp").forward(request, response);
    }
}
