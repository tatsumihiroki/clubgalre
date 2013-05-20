
var clicklistid;


function clicklook(lookparams){

	//clicklistid=clickli;
	//clickumbhindid=clickumbhind;
    var lookurl='http://localhost:3000/photos/look.json';

    $.ajax({
          url: lookurl,
          dataType: 'json',
          data: {id:lookparams},
          type:'post',
          success: lookplus
    });


};



function lookplus(data){
	//alert(data);
  // $(clicklistid).text(data);




};
