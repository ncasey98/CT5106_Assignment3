package enterprise.web_jpa_war.servlet;

import enterprise.web_jpa_war.entity.Subject;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import javax.persistence.PersistenceUnit;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityManager;
import javax.annotation.Resource;
import javax.transaction.UserTransaction;

/**
 *
 * @author nora
 */
// The servlet class to insert Subject into database
@WebServlet(name = "CreateSubjectServlet", urlPatterns = {"/CreateSubject"})
public class CreateSubjectServlet extends HttpServlet {

    @PersistenceUnit
    // The emf corresponding to
    private EntityManagerFactory emf;
    
    @Resource
    private UserTransaction utx;
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException {
        // Make sure injection went through correctly
        assert emf != null;
        EntityManager em = null;
        try {
            // Get the data from user's form 
            String id = (String) request.getParameter("id");
            String name = (String) request.getParameter("name");
            String description = (String) request.getParameter("description");
            
            // Create a subject instance out of it
            Subject subject = new Subject(id, name, description);
            
            // Begin a transaction
            utx.begin();
            // Create an em, since the em is created inside a transaction, it is associated with
            // the transaction
            em = emf.createEntityManager();
            // Persist the subject entity
            em.persist(subject);
            // Commit transaction which will trigger the em to
            // commit newly created entity into database
            utx.commit();
            
            // Forward to ListSubject servlet to list subjects along with the newly
            // creted subject above
            request.getRequestDispatcher("ListSubject").forward(request, response);
        } catch (Exception ex) {
            throw new ServletException(ex);
        } finally {
            // Close the em to release any resoucrse helf up by the persistence
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
