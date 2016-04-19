package musicspring.MusicSpringController;

import java.util.ArrayList;

import org.json.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import musicmodel.MotoMob;

@Controller
public class MusicController {
	String message = "Welcome to MusicHub!!!";
	@RequestMapping("/")
	public ModelAndView showMessage(
			@RequestParam(value = "name", required = false, defaultValue = "World") String name) {
		System.out.println("in controller");
 
		ModelAndView mv = new ModelAndView("helloworld");
		mv.addObject("message", message);
		mv.addObject("name", name);
		return mv;
	}
	
	@RequestMapping("/register")
	public ModelAndView Reg()
	{
		ModelAndView mv = new ModelAndView("register");
		return mv;
	}
	@RequestMapping("/angproduct")
	public ModelAndView angular()
	{
		ModelAndView mv = new ModelAndView("angproduct");
		return mv;
	}
	
	@RequestMapping("/andr")
	public ModelAndView android()
	{
		ModelAndView mv = new ModelAndView("andr");
		return mv;
	}
	/*@RequestMapping("/moto")
	public  ModelAndView byParameter(@RequestParam("mname") String mname ){//,@RequestParam("mprice") String mprice) {
		System.out.println("in controller-moto");
		return new ModelAndView("moto");//, "message", mname+mprice);
	
	}*/
	/**
	 * 
	 * getting array list data from model class
	 *  
	 * model gets data from model dao
	 * 
	 * 
	 * */
	@RequestMapping(value = "/m")
	public ModelAndView get(){
	System.out.println("in get  ");
		ModelAndView mv = new ModelAndView("m");
		//mv.addObject("message", list);		
		return mv;
	
	
	}
	
	
	/*for below method use it if required or xml is used
	 * (value="/motoang", 
    method=RequestMethod.GET,
    produces={"application/xml", "application/json"})
	 * 
	 */
	//public variable to be used for all method to get from musicDAo
	MotoMob m=new MotoMob();
	
	@RequestMapping("/motoang")
public @ResponseBody String  getMoto() {
		System.out.println("in get  getmoto");
		
		ArrayList<MotoMob> list=m.getData();
		System.out.println("in "+list.size());
		String json = new Gson().toJson(list);
		System.out.println(json);
		//JSON.parse(json);
		
		return json;
	}
	
	/*
	 * following method is used for moto x play product 
	 * when user clicks on first product in category moto
	 * this will be called
	 * */
	@RequestMapping("/mxplay")
	public ModelAndView getMotoxp(
			@RequestParam("pid") Integer id1) {
		System.out.println("in controller");
		m=m.getSingleProduct(id1);
		ModelAndView mv = new ModelAndView("mxplay");
		
		mv.addObject("motoobj", m);
		return mv;
	}
	
	
/*	@RequestMapping(value = "/m")
	public String get(){// ResponseEntity<MotoMob> get() {

		MotoMob m = new MotoMob();
		m.setPid(1);
		m.setAvail(4);
		m.setCost(10000);
		m.setPname("moto x play");
		MotoMob r = new MotoMob();
		r.setPid(2);
		r.setAvail(5);
		r.setCost(20000);
		r.setPname("moto g3");
		
		 ArrayList li=new ArrayList();
		 li.add(m);
		 li.add(r);
		//System.out.println("conv "+gson.toJson(m));
		
		 JSONArray js=new JSONArray(li);
			//System.out.println(m.getPname());
			//js = new JSONArray(m);
		
		System.out.println("conv "+js);
		//System.out.println("json data "+new ResponseEntity<MotoMob>(m, HttpStatus.OK));
		return "m";
	   // return new ResponseEntity<MotoMob>(m, HttpStatus.OK);
	}*/
/*	@RequestMapping(value = "/moto", method = RequestMethod.GET)
    public String viewLogin() {
        return "moto";
    }
    */
}
