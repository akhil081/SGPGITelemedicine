var img_array = ["slider_1.jpg","slider_2.jpg","slider_3.jpg","slider_4.jpg"];
var i = 0;
function moveslider()
{
	if(i == img_array.length)
		i = 0;
	document.getElementById("slide").src = "images/"+img_array[i];
	i++;
	window.setTimeout("moveslider()",2000);
}

