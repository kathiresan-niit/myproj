package musicspring.MusicDao;

import java.util.ArrayList;

import musicmodel.MotoMob;

public class modelDao {
	ArrayList<MotoMob> li=new ArrayList<MotoMob>();
	public ArrayList<MotoMob> getData()
	{
		li.add(new MotoMob(101, "motoxplay", 18000,4,"resources/image/mt.png"));
		li.add(new MotoMob(102, "motog2", 8000,3,"resources/image/mt.png"));
		li.add(new MotoMob(103, "motog3", 10000,7,"resources/image/mt.png"));
		li.add(new MotoMob(103, "mototurbo", 15000,3,"resources/image/mt.png"));
		return li;	
	}
	public MotoMob getSingleProduct(int id1){
		MotoMob mob=null;
		System.out.println("in getsingle "+li.size());
		for(Object oo:li){
			mob=(MotoMob)oo;
			if(mob.getPid()==id1){
				return mob;
			}
			else{
				mob=null;
			}
		}
		return mob;
	}

}
