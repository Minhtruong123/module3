import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ClientServlet", value = "/client")
public class ClientServlet extends HttpServlet {
    private List<khachHang> khachHangList = new ArrayList<>();

    public void init() {
        khachHangList.add(new khachHang("Mai Văn Hoàn", "1983-08-20", "123 Cù Chính Lan", "https://ichef.bbci.co.uk/news/999/cpsprodpb/15951/production/_117310488_16.jpg"));
        khachHangList.add(new khachHang("Nguyễn Văn Nam", "1983-08-21", "123 Cù Chính Lan", "https://ichef.bbci.co.uk/news/999/cpsprodpb/15951/production/_117310488_16.jpg"));
        khachHangList.add(new khachHang("Nguyễn Thái Hòa", "1983-08-22", "123 Cù Chính Lan", "https://ichef.bbci.co.uk/news/999/cpsprodpb/15951/production/_117310488_16.jpg"));
        khachHangList.add(new khachHang("Trần Đăng Khoa", "1983-08-17", "123 Cù Chính Lan", "https://ichef.bbci.co.uk/news/999/cpsprodpb/15951/production/_117310488_16.jpg"));
        khachHangList.add(new khachHang("Nguyễn Đình Thi", "1983-08-19", "123 Cù Chính Lan", "https://ichef.bbci.co.uk/news/999/cpsprodpb/15951/production/_117310488_16.jpg"));
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("khachHangList", khachHangList);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
