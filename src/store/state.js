/**
 * Created by cWX585857 on 2018/9/18.
 */
let defaultCity = '深圳'
try{
  if(localStorage.city){
    defaultCity = localStorage.city
  }
}catch (e){}


export default{
  city: defaultCity
}
