package enterprise.web_jpa_war.servlet;

import java.io.IOException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 *
 * @author nora
 */
// The servlet class to list Subjects from database

@WebServlet(name = "ListSubjectServlet", urlPatterns = {"/ListSubject"})
public class ListSubjectServlet extends HttpServlet {

    @PersistenceUnit
    private EntityManagerFactory emf;
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       // Make sure injection went through correctly
       assert emf != null;
       EntityManager em = null;
       try {
           em = emf.createEntityManager();
           
           // Query for all the subjects in database
           List subjects = em.createQuery("select s from Subject s").getResultList();
           request.setAttribute("subjectList", subjects);
           
           // Forward to the jsp page for rendering
           request.getRequestDispatcher("ListSubject.jsp").forward(request, response);
       } catch (Exception ex) {
           throw new ServletException(ex);
       } finally {
           // Close the em to release any resources held up by the persistence 
           // provider
           if (em != null) {
               em.close();
           }
       }
    }

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
        processRequest(request, response);
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
        processRequest(request, response);
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
