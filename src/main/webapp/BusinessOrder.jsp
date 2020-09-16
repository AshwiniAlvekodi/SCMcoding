<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Welcome</title>
        
        <script type="text/javascript">
     
    function selectValue(val){
    	alert(val);
    	if(val == "nRule"){
    		var page="redirect";
    	}
    	
    }
    <script type="text/javascript">
    window.onload = function(){
        location.href=document.getElementById("selectbox").value;
    }  
    function validateForm() {
    	var select = document.getElementById("selectbox");
    	  if (select == "0") {
    	    alert("please Select Payment ");
    	    return false;
    	  }
    	}
</script>
    </head>
    <body>
    <form action="#" onsubmit="return validateForm()">
        <table align="center">
           
            <tr> <th>Business order rules</th>  </tr>
            <tr><td><label>Select Payment</label></td><td><label>
            <select name="selectbox" id="selectbox" onchange="javascript:location.href = this.value;">
  <option value="0">Select</option>
  <option value="phyproduct">Physical product</option>
  <option value="book">Book</option>
  <option value="membership">Membership</option>
  <option value="mUpgrade">Upgrade to a Member ship</option>
  <option value="upgrade">Membership/Upgrade</option>
  <option value="ski">Learning to Ski</option>
  <option value="prodBook">Physical Product or a Book</option>
  <option value="createRule">Create a New Rule</option>
</select></label></td></tr>
 <tr>
                
              
             
                
                <td><input type=submit name="submit" value="submit"></td>
            </tr>
            
        </table>
        </form>
    </body>
    </html>