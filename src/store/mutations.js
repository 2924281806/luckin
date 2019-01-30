/**
 * Created by cWX585857 on 2018/9/18.
 */
export default{
  changeCity(state,city){
    state.city = city
    console.log(state.city.title)
    try{
      localStorage.city = city
    }catch (e){}
  }
}

