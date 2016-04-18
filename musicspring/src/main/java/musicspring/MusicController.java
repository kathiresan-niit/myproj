package musicspring;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
	@RequestMapping("/moto")
	public  ModelAndView byParameter(@RequestParam("mname") String mname ){//,@RequestParam("mprice") String mprice) {
		System.out.println("in controller-moto");
		return new ModelAndView("moto");//, "message", mname+mprice);
	
	}
	
	@RequestMapping(value = "/m")
	public String get(){// ResponseEntity<MotoMob> get() {

		MotoMob m = new MotoMob();
		m.setPid(1);
		m.setAvail(4);
		m.setCost(10000);
		m.setPname("moto x play");
		System.out.println("json data "+new ResponseEntity<MotoMob>(m, HttpStatus.OK));
		return "m";
	   // return new ResponseEntity<MotoMob>(m, HttpStatus.OK);
	}
/*	@RequestMapping(value = "/moto", method = RequestMethod.GET)
    public String viewLogin() {
        return "moto";
    }
    */
}
