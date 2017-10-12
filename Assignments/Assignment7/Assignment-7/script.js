//Title constructor function that creates a Title object
function Title(t1) 
{ this.mytitle = t1;
}

Title.prototype.getName = function () 
{ 
return (this.mytitle);
}

var socialMedia = {
  facebook : 'http://facebook.com',
  twitter: 'http://twitter.com',
  flickr: 'http://flickr.com',
  youtube: 'http://youtube.com'
};

var t = new Title("CONNECT WITH ME!");

var socialList = function() {
  var  display = '<ul>', 
    emoticons = document.querySelectorAll('.socialmediaicons');

  for (var i in arguments[0]) {
    display+= '<li><a href="' + socialMedia[i] + '">' +
      '<img src="images/' + i + '.png" alt="icon for '+i+'">' +
      '</a></li>';
  }
  display+= '</ul>';
  
  for (var i = emoticons.length - 1; i >= 0; i--) {
    emoticons[i].innerHTML = display;
  };
}(socialMedia);

		$("#question_text_1").ready(function(){
			$("#downArrow").click(function(){
				$("#myDIV").toggle();
			});
		});
		$("#question_text_2").ready(function(){
			$("#downArrow2").click(function(){
				$("#myDIV2").toggle();
			});
		});
		$("#question_text_3").ready(function(){
			$("#downArrow3").click(function(){
				$("#myDIV3").toggle();
			});
		});
		
		$(document).ready(function() {
		   $('.dropDownTextArea').hide();
		});
		
		$("input[type='checkbox']").change(function(){
			
			if($(this).is(":checked")){
				$(this).closest("tr").addClass("wheatBackground"); 
				btnFunction();
			}else{
				$(this).closest("tr").removeClass("wheatBackground");  
				btnFunction();
			}
			
		});
		
		function btnFunction() {
			if ($('input[type=checkbox]').is(":checked")) {
				$("#button").css("backgroundColor","orange");
			}
			else {
	     		$("#button").css("backgroundColor","grey");
			}		
		}
		
		
		
		

