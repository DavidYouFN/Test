<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>省城区三级联动</title>
  </head>
  
  <body>
      <select id="provinceID" width="111px">
         <option>选择省份</option>
         <option>广东</option>
         <option>安徽</option>
         <option>武汉</option>
      </select>
      
      <select id="cityID" width="111px">
          <option>选择城市</option>
      </select>
      
      <select id="areaID" width="111px">
          <option>选择区域</option>
      </select>
    
      <!-- 省份-城市 -->
      <script type="text/javascript">
          document.getElementById("provinceID").onchange = function(){
             //清空城市下拉框
             var cityElement = document.getElementById("cityID");
             cityElement.options.length = 1;
             //清空区域下拉框
             var areaElement = document.getElementById("areaID");
             areaElement.options.length = 1;
             
             var province = this[this.selectedIndex].innerHtml;
             if("选择城市" != province){
                //No1
                var ajax = createAjax();
                //No2
                var method = "POST";
                var url = "${pageContext,Request,contextPage}/findCityByProvinceRequest?time="+ new Date().getTime();
                ajax.open(method,url);
                //No3
                ajax.setRequestHeader("content-type","application/x-www-form-urlencoded")
                //No4
                var content = "province" + province;
                ajax.send(content);
                
                //--------------------------------等待
                
                //No5
                var onreadystatechange = function(){
                   if(ajax.readyState == 4){
                      if(ajax.status == 200){
                       //NO6)返回JAVA格式的JSON文本
                         var jsonJAVA = ajax.responseText;
                        //p所代表的是java格式的json文本，是不能直接被js执行的
						//解决方案：将java格式的json文本，转成js格式的json文本
						//如何做：用js提供的一个函数搞定
						var  jsonJS = eval("("+jsonJAVA+")");
						
						var array = jsonJAVA.cityList;
						var size = array.lenght;
						for(var i = 0; i<size;i++){
						   var city = array[i];
						   var option = documnet.getElementById("option");
						   option.innerHtml = city;
						   cityElement.appendChild(option);
						}
							
                      }
                   } 
                }
             }
            
          }
      </script>
  </body>
</html>
