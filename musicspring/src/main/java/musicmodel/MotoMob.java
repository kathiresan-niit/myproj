package musicmodel;

import java.util.ArrayList;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlRootElement;

import musicspring.MusicDao.modelDao;

/*
 * created by kathiresan
 * this model class helps to store information about product
 * 
 * */
@XmlRootElement
public class MotoMob {
	private Integer pid;
	private String pname;
    private Integer cost;
    private Integer avail;
    private  String imgpath;
    @XmlAttribute
	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}
	@XmlAttribute
	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}
	@XmlAttribute
	public Integer getCost() {
		return cost;
	}

	public void setCost(Integer cost) {
		this.cost = cost;
	}
	@XmlAttribute
	public Integer getAvail() {
		return avail;
	}

	public void setAvail(Integer avail) {
		this.avail = avail;
	}
	@XmlAttribute
	public String getImgpath() {
		return imgpath;
	}

	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}

	public MotoMob(Integer pid, String pname, Integer cost, Integer avail, String imgpath) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.cost = cost;
		this.avail = avail;
		this.imgpath = imgpath;
	}

	public MotoMob() {
		super();
		// TODO Auto-generated constructor stub
	}

	modelDao m=new modelDao();
	public ArrayList<MotoMob> getData()
	{
		
	    return m.getData(); 
	}
    
    public MotoMob getSingleProduct(int id1){
    	
    	MotoMob mo=new MotoMob();
    	mo=m.getSingleProduct(id1);
    	return mo ;
    }
}
