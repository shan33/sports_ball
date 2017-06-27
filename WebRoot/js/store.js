/**
 * Created by 许灡珊 on 2017/3/13.
 */
$(document).ready(function(){
    init() ;
}) ;

/*添加左边点击事件*/
function init(){
    var father = document.getElementById("right") ;
    
    $('#left li').click(function(event){
        switch($(this).index()){
            case 0:
                console.log("new.jsp") ;
                $('#right iframe').attr('src','new.jsp') ;
                break;
            case 1:
                console.log("old.jsp") ;
                $('#right iframe').attr('src','old.jsp') ;
                break;
            case 2:
                console.log("publish.jsp") ;
                $('#right iframe').attr('src','publish.jsp') ;
                break;

        } 
    }) ;
}


/*
 * 添加物件div
 *id:   div的id
 *name: div的内容
 *pic:  包含的图片内容
 *information: 文字说明和解释
 * */
function addInfoDiv(myId,myName,pic,information,parent){
    
  /*  var includeDIV = 
          "  <div class='panel panel-success little_thing'> " +
             "    <div class=''panel-heading'> " +
                 "    <p class='panel-title'> " +
                     "    <a href= " +"#" +myId +" data-toggle='collapse' >竹编</a></p> " +
                 " </div> " +
                 " <div id=" +myId +" class='panel-collapse collapse'> " +
                 "     <div class='panel-body> " +
                 "        <em>" +myName +"竹编</em> " +
                 "        <div> " +
                 "            <img src='" +pic + "'> " +
                 "            <img src='" +pic + "'> " +
                 "            <img src='" +pic + "'> " +
                 "        </div>" +
                 "        <p> " +information +"</p> "+
                 "    </div> " +
             " </div>" ;
    parent.innerHTML = includeDIV ; */
    var includeDIV = document.createElement('div') ;
    var headingDIV = document.createElement('div') ;
    var collapseDIV = document.createElement('div') ;
    var bodyDIV = document.createElement('div') ;
    var imgDIV = document.createElement('div') ;
    includeDIV.setAttribute("class","panel panel-success little_thing") ;
    headingDIV.className = "panel-heading" ;
    collapseDIV.className = "panel-collapse collapse" ;
    collapseDIV.id = myId ;
    bodyDIV.className = "panel-body" ;
    
    var titleHref = document.createElement("a") ;
    var nameEm = document.createElement("em") ;
    var titleP = document.createElement('div') ;
    var img = document.createElement("img") ;
    var contentP = document.createElement("p") ;
    titleHref.setAttribute("href",'#' +myId) ;

    titleHref.setAttribute("data-toggle","collapse");
    nameEm.innerHTML = myName ; 
    img.setAttribute("src",pic) ;
    titleP.className = "panel-title" ;
    contentP.innerHTML = information ;
    titleP.appendChild(titleHref) ;
    headingDIV.appendChild(titleP) ;
    
    imgDIV.appendChild(img) ;
    imgDIV.appendChild(img) ;
    imgDIV.appendChild(img) ;
    bodyDIV.appendChild(nameEm) ;
    bodyDIV.appendChild(imgDIV) ;
    bodyDIV.appendChild(contentP) ;
    collapseDIV.appendChild(bodyDIV) ;

    includeDIV.appendChild(headingDIV) ;
    includeDIV.appendChild(collapseDIV) ;

    console.log(parent.children.length) ;
    if(parent.children != null){
        let child = parent.children ;
        let len = child.length ;
        for(let i=0;i<len;i++){
            console.log("i=" +i +"  length" +len) ;
            parent.removeChild(child[0]) ;
        }
    }
    console.log(parent.children.length) ;
    //parent.appendChild(includeDIV) ;
    console.log(includeDIV.children.length) ;
}

