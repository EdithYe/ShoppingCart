package exp7;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import exp6_7.CartBook;

@WebServlet("/test7/addbook.do")
public class AddBookServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		CartBook cart=(CartBook)session.getAttribute("cart");
		String id=request.getParameter("id");
		if(cart!=null){
			cart.add(id);
			request.getRequestDispatcher("index.jsp").forward(request, response); 
		}else{
			cart=new CartBook();
			cart.add(id);
			session.setAttribute("cart", cart);
		}
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}

}
