
var clicklistid;
var clickumbhindid;

function clicklike(likeparams,clickli,clickumbhind){

	clicklistid=clickli;
	clickumbhindid=clickumbhind;
    var likeurl='http://localhost:3000/photos/like.json';

    //alert(params);

    $.ajax({
          url: likeurl,
          dataType: 'json',
          data: {id:likeparams},
          type:'post',
          success: likeplus
    });


};



function likeplus(data){
	 $(clicklistid).text(data);


	//alert(data);
	//alert(status)


};
