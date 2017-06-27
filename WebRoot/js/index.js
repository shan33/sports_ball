
var info = $("#my_info") ;
var badmiton = $("#badmiton") ;
var left = $("#left") ;
var middle = $("#middle") ;
var right = $("#right") ;

var info_flag = true;
$(document).ready(function(){
 	$('#left').animate({'opacity':'1'}).html('聊一波否？亲') ;
	$('#right').animate({'opacity':'1'}).html('约场球!大佬') ;
	$('#index-login').modal('hide');
    //init() ;
        //$("#badmiton").hide().click(function(){
        $("#badmiton").click(function(){
            if(info_flag){
                console.log("click") ;
                showMyInfo() ;
                $(this).animate({'left':'10px'}) ;
                info_flag = false ;
            }else{
                console.log("click") ;
                init() ;
                $(this).animate({'left':'40px'}) ;
                info_flag = true;
            }
        }) ;


    //提示信息,聊一波，约一波
    $('.main:not(#middle)').mouseenter(function(event){
        var tar = event.target ;
            $(tar).animate({'opacity':'0.3'}) ;
            if( tar.id === 'left' ){
               $(tar.getElementsByTagName('p')[0]).animate({'opacity':'1'}).html('聊一波否？亲') ;
            }else{
               $(tar.getElementsByTagName('p')[0]).animate({'opacity':'1'}).
html('约场球!大佬') ;
            }
    }).mouseleave(function(event){
        var tar = event.target ;
        $(tar).animate({'opacity':'1'}) ;
        //tar.getElementsByTagName('p')[0].innerHTML = '' ;

    }).click(function(event){
        var tar = event.target ;
            if( tar.id === 'left' )
                //location.href = 'talking.jsp' ;
		location.href = 'talking.jsp' ;
            else
                //location.href = 'getAllMessages.do' ;
		location.href = 'date.html' ;
    }) ;

    //商城
    $('body div:first u:last').click(function(){
        location.href = 'store.jsp' ; 
    }) ;

}) ;

//初始页面
function init(){
    $('#my_info').empty().animate({'width':'0','height':'0','border':'none'}) ;
    badmiton.hide() ;
    $(function(){
        $('#index-login').modal('hide') ;
    }) ;
    $(".main:not(#right)").animate({"width":"25%","height":"600px","marginTop":"3%","marginLeft":"10%"}) ;
    $('#middle').css("width","12%").css("marginLeft","8%") ;
    $('#right').animate({"width":"27%",'marginLeft':'0'}) ;


}

//显示个人信息
function showMyInfo(){
    var my_info = "<img src='pic/no_pic.jpg' class='upload'></img>" +
           "<input id='user_pic' class='user_pic' type='file' name='image'><br><br><br><br>" +
           " <p><u>我的信息</u> </p><br> " +
           " <p><u>查看更多</u>  </p><br>" +
           " <p>新的消息：<u>0</u> </p><br> " +
           " <p>切换账号/注销 </p><br> " ;
    $("#my_info").animate({"width":"16%","height":"600px","marginTop":"3%","border":"solid 2px red"}) ;
    $("#left").animate({"width":"24%","marginLeft":"0%"}) ;
    $("#middle").animate({"width":"18%","marginLeft":"8%"}) ;
    $("#right").animate({"width":"28%","marginLeft":"0"}) ;


    $("#my_info").append(my_info) ;

    //提交修改图片
    $("#my_info #user_pic").on('change', function(){
        var path = $(this).val() ;
        $("#my_info img").attr('src',+path) ;
        $("#my_info img").css('background','black') ;
        console.log( $('#my_info img').attr('src') ) ;
        alert("您提交了你的头像信息" + $('#user_pic').val() ) ;
        /*$.ajax({
            url: "http://192.168.45.21:8080/sports1/mysports/userinfo.do?",
            method: "POST",
            async: false,
            data: {
            },
            contentType: "application/x-www-form-urlencoded",
            success: function(){
                alert("上传成功") ;    
            },
            error: function(){
                
            }
            
        }) ;*/
    }) ;
    
    $("#my_info div").on('click', function(){
        alert("click") ; 
    }) ;
    
}

/*function Person(myid,name,pic,news,school,major){
    this.id = myid ;
    this.pic = pic ;
    this.news = news ;
    this.school = school ;
    this.major = major ;
    this.getPerson = function(){
        return {
            userid: this.id,
            username: this.name,
            usernews: news,
            usermajor: major,
            userschool: school
        } ;
    } ;
}*/

