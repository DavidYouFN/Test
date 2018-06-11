package province.java;

import java.util.ArrayList;
import java.util.List;
import com.opensymphony.xwork2.ActionSupport;

public class provincecityareaAction extends ActionSupport{

	private Bean bean;
	public Bean getBean() {
		return bean;
	}
	public void setBean(Bean bean) {
		this.bean = bean;
	}
	/**
	 * 根据省份获取城市 
	 */

	public String findCityByProvince() throws Exception {
		ArrayList<String> cityList = new ArrayList<String>();
		if("广东".equals(bean.getProvince())){
			cityList.add("湛江");
			cityList.add("广州");
		}else if("安徽".equals(bean.getProvince())){
			cityList.add("芜湖");
			cityList.add("合肥");
			cityList.add("六安");
			}else if("武汉".equals(bean.getProvince())){
			cityList.add("无锡");
			cityList.add("汉口");
			cityList.add("汉阳");
			cityList.add("汉江");
			}
		//让struts2框架帮你将List/Set/Map<String>转成JSON文本
		return SUCCESS;
		}
}
