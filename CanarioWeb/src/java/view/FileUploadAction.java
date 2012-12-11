/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

/**
 *
 * @author Franco
 */

 
import java.io.File;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;
 
import dao.PerfilDao;

public class FileUploadAction extends ActionSupport implements ServletRequestAware {
    private File userImage;
    private String userImageContentType;
    private String userImageFileName;
 
    private HttpServletRequest servletRequest;
 
    public String execute() {
        try {
           //String filePath = servletRequest.getSession().getServletContext().getRealPath("/img/users");
            String filePath = "D:\\nb_proyectos\\repository\\canario_grupo3\\CanarioWeb\\web\\img\\users\\";
            //String filePath = "C:\\Users\\el pampa\\Documents\\NetBeansProjects\\canario_grupo3\\CanarioWeb\\web\\img\\users\\";
            System.out.println("Server path:" + filePath);
            File fileToCreate = new File(filePath, this.userImageFileName);
 
            FileUtils.copyFile(this.userImage, fileToCreate);
        } catch (Exception e) {
            e.printStackTrace();
            addActionError(e.getMessage());
            
            
            return INPUT;
        }
        PerfilDao.saveImage(this.userImageFileName);
        return SUCCESS;
    }
 
    public File getUserImage() {
        return userImage;
    }
 
    public void setUserImage(File userImage) {
        this.userImage = userImage;
    }
 
    public String getUserImageContentType() {
        return userImageContentType;
    }
 
    public void setUserImageContentType(String userImageContentType) {
        this.userImageContentType = userImageContentType;
    }
 
    public String getUserImageFileName() {
        return userImageFileName;
    }
 
    public void setUserImageFileName(String userImageFileName) {
        this.userImageFileName = userImageFileName;
    }
 
    @Override
    public void setServletRequest(HttpServletRequest servletRequest) {
        this.servletRequest = servletRequest;
 
    }


    

}
