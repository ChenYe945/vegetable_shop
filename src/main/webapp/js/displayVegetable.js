/**
 * Created by Kenton on 2017/3/16.
 */

for(var i=0;i<16;i++){
    $("#display_ul").append('<li></li>');
}
var price = '¥1880';
var liDiv1 = '<div class="display_div1">' +
    '<img src="${ctx}/images/shopImg_01.jpg" alt=""><h3>图片标题</h3><p>'+price+'' +
    '</p></div>';
var description = '寒假快乐哈都可以乎其微好处费'
var liDiv2 = '<div  class="display_div2"><img src="${ctx}/images/shopImg_01.jpg" alt=""><div class="display_div3">'+description+'</div></div>'
$("#display_ul li").append(liDiv1);
$("#display_ul li").append(liDiv2);