function addition(num2){
    document.getElementById("balance").innerHTML = parseInt(document.getElementById("balance").innerHTML) + parseInt(num2);
}
function substraction(num2){
    document.getElementById("balance").innerHTML = parseInt(document.getElementById("balance").innerHTML) - parseInt(num2);
}
function banking(){
    var select=document.getElementById("dropbox").value;
    var descp=document.getElementById("des").value;
    var inpt=document.getElementById("inpt").value;
    var todayDate=new Date(); 
    if(select=="deposite"){
        document.getElementById("balance").innerHTML = parseInt(document.getElementById("balance").innerHTML) + 
        parseInt(document.getElementById("inpt").value);
        var para = document.createElement("p");
        var brk=document.createElement("br");
        var node = document.createTextNode(descp+" Deposited "+ "Rs."+inpt+"  At "+todayDate.getFullYear()+"-"+
        todayDate.getMonth()+"-"+todayDate.getDate());
        var element = document.getElementById("div1");
        element.appendChild(para.appendChild(node));
        element.appendChild(brk);
        // var child = document.getElementById("p1");
        // element.insertBefore(para,child);
        document.getElementById("cash").innerHTML=inpt;
    }
    if (select=="withrawal") {
    document.getElementById("balance").innerHTML = parseInt(document.getElementById("balance").innerHTML) - 
    parseInt(document.getElementById("inpt").value);       
    var para = document.createElement("p");
    var brk=document.createElement("br");
    var node = document.createTextNode(descp+" Withdrawl "+ "Rs."+inpt+"  At "+todayDate.getFullYear()+"-"+
    todayDate.getMonth()+"-"+todayDate.getDate()+"  / "+todayDate.getHours()+" hr "+todayDate.getMinutes()+" Min");
    var element = document.getElementById("div2");
    element.appendChild(para.appendChild(node));
    element.appendChild(brk);
    // var child = document.getElementById("p1");
    // element.insertBefore(para,child);
    document.getElementById("cashw").innerHTML=inpt
}
}