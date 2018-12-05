

var str="http://1202.0.0.1:300/index.html?kw=I5";
console.log(str.split("=")[0])


/*promise 两个状态 pending(执行中) Resolved(成功) rejected(拒绝)*/
/*var promise=function(isReady){
    return new Promise(function(resolve,reject){
        if(isReady){
            return resolve("hello world")
        }else{
            return reject("failure")
        }
    });
}
promise(false).then(function(value){
    console.log(value)
})
    .catch(function(err){
        console.log(err)
    })




function makePromise1(){
    var p=new Promise(function(resolve,reject){
        setTimeout(function(){
            console.log("异步任务1")
            resolve("异步任务1传来的值");
        },2000);
    })
    return p;
}
function makePromise2(){
    var p=new Promise(function(resolve,reject){
        setTimeout(function(){
            console.log("异步任务2")
            resolve("异步任务2传来的值");
        },2000);
    })
    return p;
}
function makePromise3(){
    var p=new Promise(function(resolve,reject){
        setTimeout(function(){
            console.log("异步任务3")
            resolve("异步任务3传来的值");
        },2000);
    })
    return p;
}
makePromise1().then(function(value){
    console.log(value);
    return makePromise2()
})
.then(function(value){
    console.log(value);
    return makePromise3()
})
    .then(function(value){
        console.log(value)
    })

function a(){
    return new Promise(function(resovle,reject){
       resovle("nihao")
    });
}
a().then(function(value){
    console.log(value)
})




        /*async ES7*/
/*(async function(){
    try {
        var result=await 异步调用1
        var result=await 异步调用2
    }catch (err) {
        
    }
   
})();*/
/*for(var i=0;i<10;i++){

     setTimeout(fn,1000);
     function fn(a){
         function fnc(){
            console.log(a)
    }
    return fnc()
 }fn(i);

}*/



/*数组去重*/
//var color=[1,1,1,2,3,5,7,8,5,4,2]

//方法1
/*function unique(arr){
   for(var i=0;i<arr.length-1;i++){
       for(var j=i+1;j<arr.length;j++){
           if(arr[i]==arr[j]){
               arr.splice(j,1)
               j--;
           }
       }
   }
   return arr;
}
var arr=unique(color);
console.log(arr)*/
//方法2
/*function rep2(arr){
    for(var i=0;i<arr.length;i++){
        if(arr.indexOf(arr[i])!=i){
            arr.splice(i,1)
            i--;
        }
    }
    return arr;
}
var arr=rep2(color);
console.log(arr)*/
/*function queryURL(url){
    var arr1=url.split("?")
    var params=arr1[1].split("&");
    console.log(params)
    var obj={};
    for(var i=0;i<params.length;i++){
        var param=params[i].split("=");
        console.log(param)
        obj[param[0]]=param[1];
    }
    return obj;
}
var a=queryURL("http://www.baidu.com?name=javascript&keyword=word");
console.log(a);*/
/*递归克隆*/
/*function deepClone(obj){
    let objClone=Array.isArray(obj)?[]:{};
    if(obj && typeof obj==="object"){
        for(key in obj){
            if(obj.hasOwnProperty(key)){
                if(obj[key]==="object"){
                    objClone[key]=deepClone(obj[key]);
                }else{
                    objClone[key]=obj[key]
                }
            }
        }
    }
    return objClone;
}*/
/*JSON.stringify和JSON.parse解决克隆问题*/
/*function deepClone(obj){
    let _clone=JSON.stringify(obj)
     return clone=JSON.parse(_clone);
}
let a=[1,2,3,4];
    b=deepClone(a);
    a[0]=2;
    console.log(a,b);*/

/*function add(s){
    return s.replace(/^\s*|\s*$/g,"");
}

var str=" qqq aaa ";
console.log(str)
var ss=add(str);
console.log(ss)*/

//every 判断数组中所有元素是否符合,输出的是布尔值
/*var arr=[1,2,3,4,5,6,7,8,9];

arr.every(function(elem,i,arr){
    return elem%2==1
})
//some 判断数组中是否包含符合要求的元素
arr.some(function(elem,i,arr){
    return elem%2==1
})
//JS手写indexof
Array.prototype.indexOf=function(elem,starti){
    if(starti===undefined) starti=0;
    var arr=this;
    for(var i=starti;i<arr.length;i++){
        if(elem===arr[i]){
            return i
        }
    }
    return -1
}*/
//JS手写forEach
/*Array.prototype.forEach=function(callback){
    var arr=this;
    for(var i=0;i<arr.length;i++){
        if(arr[i]!==undefined){
            callback(arr[i],i,arr)
        }
    }
};
var arr=[1,2,3];
var str=arr.toString(arr);
console.log(str)*/
//手写slice方法
/*Array.prototype.slice = function(start,end){
    var result = new Array();
    start = start || 0;
    end = end || this.length; //this指向调用的对象，当用了call后，能够改变this的指向，也就是指向传进来的对象，这是关键
    for(var i = start; i < end; i++){
        result.push(this[i]);
    }
    return result;
}*/
/*function Animal(name){
    this.name=name || 'Animal';
    //实例方法
    this.sleep=function(){
        console.log(this.name +"正在睡觉");
    }
}
Animal.prototype.eat=function(food){
        console.log(this.name+ "正在吃:"+food)
}*/
//1.原型链继承
/*function Cat() {
}
Cat.prototype=new Animal();
Cat.prototype.name='cat';

var cat=new Cat();
console.log(cat.name);
console.log(cat.sleep());
console.log(cat.eat("aaa"))*/
//2.构造继承
/*function Cat(name){
    Animal.call(this);
    this.name=name
}

var car=new Cat('tom');
console.log(car.name);
console.log(car.sleep());
console.log(car.eat("aaa"));*/
//3.实例继承
/*function Cat(name){
    var instance=new Animal();
    instance.name=name
    return instance
}
var cat=new Cat('sasa');
console.log(cat.name);
console.log(cat.sleep());
console.log(cat.eat("sssss"))*/
//4.拷贝继承
/*function Cat(name){
    var animal=new Animal();
    for(var p in animal){
        Cat.prototype[p]=animal[p]
    }
    Cat.prototype.name=name ||'tom';
}*/

//5.组合继承
/*function  Cat(name){
    Animal.call(this);
    this.name=name
}
Cat.prototype=new Animal();
//修复构造函数指向问题
Cat.prototype.constructor=Cat;

var cat=new Cat('cacac');
console.log(cat.name);
console.log(cat.sleep());*/


//6.红绿灯
/*function red(){
    console.log("红灯亮了")
}
function yellow(){
    console.log("黄灯亮了")
}
function green(){
    console.log("绿灯亮了")
}
var light=function(timer,data){
    return new Promise(function(resolve,reject){
        setTimeout(function(){
            data()
            resolve();
        },timer)
    })
}
var step=function(){
    Promise.resolve().then(function(){
        return light(3000,red);
    }).then(function(){
        return light(2000,green)
    }).then(function(){
        return light(1000,yellow)
    }).then(function(){
        step()
    })
}
step()*/



