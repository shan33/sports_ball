package controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import com.google.gson.JsonObject;
import dao.UserDAO;
import entity.User;
import util.SavePic;

@Controller
public class UserController {

	UserDAO dao;

	public UserDAO getDao() {
		return dao;
	}
	@Resource
	public void setDao(UserDAO dao) {
		this.dao = dao;
	}
	@RequestMapping("/login.do")
	public String login(User user,HttpServletResponse response,HttpSession session)
	{
		//0ʧ�ܣ�1�ɹ�
		System.out.println(user);
		//user.setId(1);
		String data = "0";
		if(dao.login(user))
		{
			data = Integer.toString(dao.getUserId(user));
			session.setAttribute("USER", user.getUname());
			session.setAttribute("UID", data);
		}
		try {
			PrintWriter out = response.getWriter();
			out.print(data);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	@RequestMapping("/register.do")
	public String register(User user,HttpServletResponse response)
	{
		String data = "0";
		dao.register(user);
		data = Integer.toString(dao.getUserId(user));
		try {
			PrintWriter out = response.getWriter();
			out.print(data);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	@RequestMapping("/userinfo.do")
	public String doUploadFile(HttpServletRequest request,
	                                 HttpServletResponse response, HttpSession session,User user, MultipartFile image)
	        throws Exception, IOException {
		System.out.println("************"+"userinfo.do");
		String data="0";
	    // ת��ΪMultipartHttpRequest��
	    //MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
	    // ����ļ���
	    //MultipartFile file = multipartRequest.getFile("image");
	    //ModelAndView modelAndView = new ModelAndView("index.jsp");
	    String id = (String) session.getAttribute("UID");
	    if(!image.isEmpty())
	    {
	    	System.out.println("************image");
		    // ����ļ�����
			Date date = new Date();
			SimpleDateFormat f = new SimpleDateFormat("yyyyMMddHHmmss-");
			String time = f.format(date);
			String filename = time+image.getOriginalFilename();
		    
	        //�õ�����·��
		    ServletContext application = session.getServletContext();
		    String path = application.getRealPath("")+"/images";
		    System.out.println("----------------------"+path);
		    InputStream input = image.getInputStream();
		    // String path = "D:/goodsImages";�±����path��д�������ļ���ߵģ������޸ģ���������ܳ�����õĽ������·��D:/goodsImages
		    //String path = "http: //192.168.1.120/GoodsExchange/img";
		    File myfile = new File(path,filename);
		    System.out.println("----------------------"+myfile.toString());
		    if(!myfile.getParentFile().exists())
			{
				myfile.getParentFile().mkdirs();
			}
		    //���浽����
		    SavePic.SaveFileFromInputStream(input, myfile.toString());
		    user.setUphoto("images/"+filename);
		    //String result = "�ϴ��ɹ���";
		    //modelAndView.addObject("result", result);
		    //modelAndView.addObject("filename", filename);
	    }
	    else if(image.isEmpty())	
	    {
	    	System.out.println("************imageΪnull");
	    	User oldUser = dao.getUser(Integer.parseInt(id));
	    	user.setUphoto(oldUser.getUphoto());
	    }
	    else
	    {
	    	System.out.println("************null");
	    }
	    
	    user.setId(Integer.parseInt(id));
	    dao.addUserInfo(user);
	    data = "1";
	    //System.out.println("+++++++++++++++++++"+request.getRequestURI());
	    return "index.jsp";
	}
	@RequestMapping("/check.do")
	public String check(User user,HttpServletResponse response)
	{
		//0û���ظ���1�ظ�
		String data="0";
		if(dao.checkName(user))
		{
			data = "1";
		}
		try {
			PrintWriter out = response.getWriter();
			out.print(data);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	@RequestMapping("/getuserinfo.do")
	@ResponseBody
	public User getUser(HttpSession session)
	{
		String uid = (String) session.getAttribute("UID");
		User user = dao.getUser(Integer.parseInt(uid));
		if(user.getUphoto()==null)
		{
			user.setUphoto("images/123.jpg");
		}
		System.out.println(user.getUphoto());
		//ModelAndView modelAndView = new ModelAndView("userinfo.jsp");
		//modelAndView.addObject("user",user);
		return user;
	}
	@RequestMapping("/getuser.do")
	@ResponseBody
	public User getUserById(User user)
	{
		User u = dao.getUser(user.getId());
		/*ModelAndView modelAndView = new ModelAndView("postuser.jsp");
		modelAndView.addObject("postuser", u);*/
		return u;
	}
	
	@RequestMapping("/method.do")  
	@ResponseBody
	public String method2(HttpServletRequest request,HttpServletResponse response,HttpSession session) {
		
		JsonObject json = new JsonObject();
	    // ת��ΪMultipartHttpRequest��
	    MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
	    // ����ļ���
	    MultipartFile file = multipartRequest.getFile("file");
	    // ����ļ�����
	    String filename = file.getOriginalFilename();
	    //�õ�����·��
	    ServletContext application = session.getServletContext();
	    String path = application.getRealPath("")+"/file";
	    System.out.println("*************************"+path);
	    try {
			InputStream input = file.getInputStream();
			File myfile = new File(path,filename);
		    System.out.println("*************************"+myfile.toString());
		    if(!myfile.getParentFile().exists())
			{
				myfile.getParentFile().mkdirs();
			}
		    //���浽����
		    SavePic.SaveFileFromInputStream(input, myfile.toString());
		   json.addProperty("success", "1");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
		return json.toString();
	}

}
