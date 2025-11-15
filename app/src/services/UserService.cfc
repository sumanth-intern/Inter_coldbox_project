component accessors="true"{
    public any function create(required struct payload){
        var user = {id=1,username=payload.username};
        return user;
    }
}