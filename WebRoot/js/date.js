

$(function(){

	    //类型
	    var type = '' ;
	    $('#date_type span').click(function(event){
		console.log("click") ;
	        $(event.target).css('backgroundColor','red') ;
		type = $(this).html() ;
	    }) ;

	    $("#post").click(function(){
		var mtime = $("#date_time").val();
		var mplace = $("#date_placenum").val();
		var mnum = $("#date_pernum").val();
		var mcontext = $("#date_other").val();
		//新增		
		var mschool = $('#date_school').html() ;			//学校
		var mtype = type ;						//类型


		$.ajax({url:"post.do",
			type:"POST",
			async:false,
			data:{"mtime":mtime,"mplace":mplace,"mnum":mnum,"mcontext":mcontext},
			success: function(data){
				if(data>0)
				{
					alert("发布成功！");
					//location.href = "getMessage.do";
				}
				else
				{
					alert("error");
				}
			},
			error: function(){
				alert("error");
			}
			});
		});
});
	

