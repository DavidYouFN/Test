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
	 * ����ʡ�ݻ�ȡ���� 
	 */

	public String findCityByProvince() throws Exception {
		ArrayList<String> cityList = new ArrayList<String>();
		if("�㶫".equals(bean.getProvince())){
			cityList.add("տ��");
			cityList.add("����");
		}else if("����".equals(bean.getProvince())){
			cityList.add("�ߺ�");
			cityList.add("�Ϸ�");
			cityList.add("����");
			}else if("�人".equals(bean.getProvince())){
			cityList.add("����");
			cityList.add("����");
			cityList.add("����");
			cityList.add("����");
			}
		//��struts2��ܰ��㽫List/Set/Map<String>ת��JSON�ı�
		return SUCCESS;
		}
}
