$(document).ready(function(){
    init(); 
}) ;

//初始设置监听函数
function init(){
    var $login = $('#login_rel') ;
    var $register = $('#register_rel') ;
    var $visiter = $('#visitor') ;
    $("#register_panel").hide() ;
    $login.click(function( event ){
        changePage(event) ;
    }) ;
    $register.click(function(event){
        changePage(event) ;
    }) ;
    $('.panel-footer a').click(function(event){
        changePage(event) ;
    });
    $visiter.click(function(event){
        changePage(event) ;
    }) ;
    $('#my_login').click(function(){
        let parent_window = parent.window ;
        //let badmiton = parent.window.document.getElementById('badmiton') ;
        //$(badmiton).show() ;
	$('window.top.document #index-login').modal('hide') ;		//隐藏主页登录界面
        child() ;
    }) ;
    //$("#register_panel .panel-body form[type='submit']").click(function(){
    $('#regi_btn').click(function(){
        register() ;
    }) ;
}

/*登录*/
function child(){
    var username = $("#login_panel input:first").val() ;
    var userpass = $("#login_panel input[type='password']").val();
    console.log("name: " +username +"---password: " +userpass) ;
    //var modal =  parent.window.document.getElementById('index-login')  ;
    //$(modal).modal('hide') ;

    $.ajax({
        url: "login.do",
        method: "POST",
        async: false,
        data: {
            "uname": username,
            "upwd": userpass
        },
        success: function(re){
           if(re>0){
        	   location.href = "index.jsp";
           }
           else{
        	   alert("用户名和密码不匹配！");
        	   location.href = "login.jsp";
           }
        },
        error: function(){
            
        }
    });

    
	console.log("登录账号") ;
}
/*注册*/
function register(){
    var username = $("#register_panel input[type='text']").val() ;
    var userpass = $("#register_panel input[type='password']") ;
    var school = $('#register_panel select:first').find('option:selected').text() ; 
    var major = $('#register_panel select:last').find('option:selected').text() ; 
    console.log(userpass.length) ;
    var pass1 = userpass[0].value ;
    var pass2 = userpass[1].value ;
    if(pass1 !== pass2)
        alert("输入两次密码不一致:  ") ;

    $("#register_panel input").blur(function(){
	alert("失去焦点" +$(this).attr('type') ) ;
	
    }) ;
    else{
        console.log("name: " +username +"---password " +pass1 +school +major) ;
        /*$.ajax({
            url: "http://192.168.45.21:8080/sports1/register.do?uname=" +username +"&&upwd=" +pass1,
            method: "POST",
            async: false,
            data: {
                name: username,
                password: pass1,
                school: school,
                major: major
            },
            dataType:"json",
            contentType: "application/x-www-form-urlencoded",
            success: function(){
                alert("注册成功") ;    
            },
            error: function(){
                
            }
        });*/
        
    }
}


/*登录注册进行切换*/
function changePage(event){
    var $this = event.target.parentNode ;
    console.log( $this) ;
    switch($this.id){
        case 'login_rel':
            $($this).addClass("active") ;
            $("#register_rel").removeClass('active') ;
            $("#register_panel").hide() ;
            $("#login_panel").show() ;
            break;
        case 'register_rel':
            $($this).addClass("active") ;
            $("#login_rel").removeClass('active') ;
            $("#register_panel").show() ;
            $("#login_panel").hide() ;
            break;
        default:
            $("#register_rel").addClass("active") ;
            $("#login_rel").removeClass('active') ;
            $("#register_panel").show() ;
            $("#login_panel").hide() ;
            break;
    }
}
