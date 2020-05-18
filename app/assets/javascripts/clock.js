function set2fig(num) {
   let ret;
   if( num < 10 ) { ret = "0" + num; }
   else { ret = num; }
   return ret;
}
function showClock2() {
   let nowTime = new Date();
   let nowYear = set2fig( nowTime.getFullYear() );
   let nowMonth = set2fig( nowTime.getMonth()+1 );
   let nowDate = set2fig( nowTime.getDate() );
   let nowDayOfWeek = nowTime.getDay();
   let nowDayOfWeekName =  [ "日", "月", "火", "水", "木", "金", "土" ][nowDayOfWeek];
   let nowHour = set2fig( nowTime.getHours() );
   let nowMin  = set2fig( nowTime.getMinutes() );
   let nowSec  = set2fig( nowTime.getSeconds() );
   let nowDays = nowYear + "/" + nowMonth + "/" + nowDate + "（" + nowDayOfWeekName + "）" + nowHour + ":" + nowMin + ":" + nowSec;
   document.getElementById("header-clock").innerHTML = nowDays;
}
setInterval('showClock2()',1000);