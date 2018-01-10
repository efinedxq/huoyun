var s1 = document.getElementById("search1");
var s2 = document.getElementById("search2");

function addOptionS(add){
  for(var i = 1; i < add.length; i ++){
	   addOption(i,add[i]);
   }
}

function addOption(val,txt){
    var opt = document.createElement("option");
    opt.text = txt;
    opt.value = val;
    s2.options.add(opt);
}

function change(){

	var value1 = s1.value;
   //清空 子列表
	var s2_length = s2.options.length;
    if(s2_length>0){
        for(var i = 0; i < s2_length; i ++){
	        s2.options.remove(0);
	    }
    }
   var add1 = new Array("","出发地点","到达地点","货物类别","有效日期");
   var add2 = new Array("","出发地点","到达地点","车辆类型","有效日期");
   var add3 = new Array("","仓库类型","所在城市","仓库面积","每间价格","发布日期");
   var add4 = new Array("","出发地点","到达地点","专线描述","车辆类型","有效日期","发布日期");
   var add6 = new Array("","企业名称","企业性质","所属行业");
   var add5 = new Array("","招聘职位","要求学历","发布日期");
   
   
   console.log(s1.value);
   
   
   if(value1 == 1){
	   addOptionS(add1);
   }
   else if(value1 == 2){
	   	addOptionS(add2);
   }
   else if(value1 == 3){
	   addOptionS(add3);
   }
   else if(value1 == 4){
      	addOptionS(add4);
   }
   else if(value1 == 5){
         addOptionS(add5);
   }
   else if(value1 = 6){
       addOptionS(add6);
   }
}